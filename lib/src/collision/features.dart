// Copyright 2012 Google Inc. All Rights Reserved.
// 
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// 
//     http://www.apache.org/licenses/LICENSE-2.0
// 
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/** The features that intersect to form the contact point */

part of box2d;

class Features {
  /** The edge that defines the outward contact normal. */
  int referenceEdge = 0;

  /** The edge most anti-parallel to the reference edge. */
  int incidentEdge = 0;

  /** The vertex (0 or 1) on the incident edge that was clipped. */
  int incidentVertex = 0;

  /** A value of 1 indicates that the reference edge is on shape2. */
  int flip = 0;

  /**
   * Constructs a new features with zero values for all fields.
   */
  Features();

  // Constructs a new Features that is a copy of the given features.
  Features.copy(Features f) :
    referenceEdge = f.referenceEdge,
    incidentEdge = f.incidentEdge,
    incidentVertex = f.incidentVertex,
    flip = f.flip;

  // Set this feature to be a copy of the given feature.
  void setFrom(Features f) {
    referenceEdge = f.referenceEdge;
    incidentEdge = f.incidentEdge;
    incidentVertex = f.incidentVertex;
    flip = f.flip;
  }

  /**
   * Returns true if this Features object is equal to the given object.
   */
  bool operator ==(other) =>
    referenceEdge == other.referenceEdge &&
    incidentEdge == other.incidentEdge &&
    incidentVertex == other.incidentVertex && flip == other.flip;

  /**
   * Returns a String representation of this Features.
   */
  String toString() {
    return "Features: ($flip, $incidentEdge, $incidentVertex $referenceEdge)";
  }

  /**
   * Sets all features to 0.
   */
  zero() {
    referenceEdge = 0;
    incidentEdge = 0;
    incidentVertex = 0;
    flip = 0;
  }
}
