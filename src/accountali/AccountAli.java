/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accountali;

import Frams.BeepayFrame;
import Frams.Login;
import Frams.MasarySellFrame;
import Frams.OpaypayFrame;
import Frams.VFCashFrame;
import Frams.menuCashFrame;
import Utilities.AutoSuggestor;
import Utilities.Tools;
import java.awt.Color;
import java.util.ArrayList;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;


/**
 *
 * @author mosta
 */
public class AccountAli {

    /**
     * @param args the command line arguments
     */

    public static void main(String[] args) {
        Login l = new Login();
        BeepayFrame o = new BeepayFrame();
        
        
        Tools.openJFram(l, "تسجيل الدخول", "account");
    }
    
}
