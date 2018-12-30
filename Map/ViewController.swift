//
//  ViewController.swift
//  Map
//
//  Created by 舟木正憲 on 2018/12/30.
//  Copyright © 2018 masanori. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    @IBOutlet var seqmentControl: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        var region = MKCoordinateRegion()
        region.center = CLLocationCoordinate2DMake(35.658611, 139.745556)
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        mapView.setRegion(region, animated: false)

        mapView.mapType = .standard

    }

    @IBAction func segmentChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .satellite
        default:
            mapView.mapType = .hybrid
        }
    }
}

