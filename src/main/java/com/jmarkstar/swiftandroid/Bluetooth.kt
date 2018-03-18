package com.jmarkstar.swiftandroid

import com.johnholdsworth.swiftbindings.SwiftBluetoothBinding;
import com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.Listener;
import com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.Responder;
import android.content.Context
import android.bluetooth.BluetoothManager
import android.bluetooth.le.ScanResult

/**
 * Created by coleman on 3/17/18.
 */

public final class SwiftBluetoothLowEnergyManager(val context: Context) : Responder {

    private val listener: Listener

    private external fun bind(self: Responder): Listener

    init {

        listener = bind(this)
    }

    private val bluetoothManager = context.getSystemService(Context.BLUETOOTH_SERVICE) as BluetoothManager

    private val adapter = bluetoothManager.adapter

    override fun startScan(settings: SwiftBluetoothBinding.ScanSettings,
                           callback: SwiftBluetoothBinding.ScanCallback) {

        val leScanSettingsBuilder = android.bluetooth.le.ScanSettings.Builder()
        leScanSettingsBuilder.setScanMode(settings.scanMode)
        leScanSettingsBuilder.setCallbackType(settings.callbackType)
        leScanSettingsBuilder.setReportDelay(settings.reportDelayMiliseconds)
        leScanSettingsBuilder.setNumOfMatches(settings.numberOfMatchesPerFilter)
        val leScanSettings = leScanSettingsBuilder.build() as android.bluetooth.le.ScanSettings

        val leScanCallback = SwiftScanCallback(callback)

        adapter.bluetoothLeScanner.startScan(null, leScanSettings, leScanCallback)
    }

    override func stopScan() {

        adapter.bluetoothLeScanner.stopScan()
    }

    private class SwiftScanCallback: android.bluetooth.le.ScanCallback() {

        var callback: SwiftBluetoothBinding.ScanCallback?

        override fun onScanResult(callbackType: Int, result: ScanResult?) {

            callback?.onScanResult(callbackType, result)
        }

        override fun onBatchScanResults(results: MutableList<ScanResult>?) {

            val swiftResults = results.map {


            }

            callback?.onBatchScanResults(results)
        }

        override fun onScanFailed(errorCode: Int) {


        }
    }

    private class SwiftScanResult(result: android.bluetooth.le.ScanResult): SwiftBluetoothBinding.ScanResult {

        val scanResult: android.bluetooth.le.ScanResult

        init {

            this.scanResult = result
        }


        fun getDevice(): SwiftBluetoothBinding.BluetoothDevice {

            val device: android.bluetooth.BluetoothDevice = this.scanResult.device

            return SwiftBluetoothDevice(device: device)
        }

        // Scan record, including advertising data and scan response data.
        fun getScanRecord(): SwiftBluetoothBinding.ScanRecord {


        }

        // Received signal strength.
        fun getRSSI(): Int {


        }

        fun getTimeStamp(): Long {


        }

        override fun toString(): String {

            this
        }
    }

    private class SwiftBluetoothDevice(device: android.bluetooth.BluetoothDevice, context: Context): SwiftBluetoothBinding.BluetoothDevice {

        var context: Context

        val device: android.bluetooth.BluetoothDevice

        init {

            this.device = device
            this.context = context
        }

        override fun getAddress(): String {

            return device.address
        }

        override fun getName(): String {

            return device.name
        }

        override fun getType(): Int {

            return device.type
        }

        override fun getDeviceClass(): Int {

            return device.bluetoothClass.hashCode()
        }

        override fun connect(transport: Int): SwiftBluetoothBinding.Peripheral {

            var

            val bluetoothGATT = device.connectGatt(context, false, transport)


        }
    }

    private class SwiftPeripheral(val gattClient: android.bluetooth.BluetoothGatt) : SwiftBluetoothBinding.Peripheral {

        val responder: SwiftPeripheralResponder

        var listener:

        init {

            this.device = device
            this.context = context
        }
    }

    private class SwiftPeripheralResponder: SwiftBluetoothBinding.Peripheral.Responder {

        val gattClient: android.bluetooth.BluetoothGatt


    }
}