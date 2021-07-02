/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mrsharky.climate.sphericalHarmonic;

import static com.mrsharky.helpers.Utilities.recursiveDelete;
import java.io.File;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author mrsharky
 */
public class ClimateFromStationsTest {

    public ClimateFromStationsTest() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
    }

    @After
    public void tearDown() {
    }

    /**
     * Test of main method, of class ClimateFromStations.
     */
    @Test
    public void testMain() throws Exception {
        String eofData = "Results/air.sfc.mon.mean.nc_PCA_40.serialized";
        String stationData = "Results/finalStations.serialized";

        String args = "--eof \"" + eofData + "\" " + "--station \"" + stationData + "\"";
        String[] arguments = args.split(" ");

        // ClimateFromStations.main(arguments);
    }

}
