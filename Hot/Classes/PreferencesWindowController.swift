/*******************************************************************************
 * The MIT License (MIT)
 * 
 * Copyright (c) 2020 Jean-David Gadina - www.xs-labs.com
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 ******************************************************************************/

import Cocoa

public class PreferencesWindowController: NSWindowController
{
    @objc public dynamic var displayCPUTemperature = UserDefaults.standard.bool( forKey: "displayCPUTemperature" )
    {
        didSet
        {
            UserDefaults.standard.setValue( self.displayCPUTemperature, forKey: "displayCPUTemperature" )
        }
    }
    
    @objc public dynamic var colorizeStatusItemText = UserDefaults.standard.bool( forKey: "colorizeStatusItemText" )
    {
        didSet
        {
            UserDefaults.standard.setValue( self.colorizeStatusItemText, forKey: "colorizeStatusItemText" )
        }
    }
    
    @objc public dynamic var automaticallyCheckForUpdates = UserDefaults.standard.bool( forKey: "automaticallyCheckForUpdates" )
    {
        didSet
        {
            UserDefaults.standard.setValue( self.automaticallyCheckForUpdates, forKey: "automaticallyCheckForUpdates" )
        }
    }
    
    @objc public dynamic var startAtLogin = NSApp.isLoginItemEnabled()
    {
        didSet
        {
            NSApp.setLoginItemEnabled( self.startAtLogin )
        }
    }
    
    public override var windowNibName: NSNib.Name?
    {
        return "PreferencesWindowController"
    }
}
