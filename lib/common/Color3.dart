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

/**
 * Similar to javax.vecmath.Color3 holder.
 */
class Color3 {
  num x;
  num y;
  num z;

  Color3() : x = 0, y = 0, z = 0 { }

  Color3.fromRGB(num r, num g, num b) :
    x = r,
    y = g,
    z = b { }

  void setFromRGB(num r, num g, num b) {
    x = r;
    y = g;
    z = b;
  }

  void setFrom(Color3 argColor) {
    x = argColor.x;
    y = argColor.y;
    z = argColor.z;
  }

  bool operator ==(final other) {
    if (other is! Color3) {
      return false;
    }
    return x === other.x && y === other.y && z === other.z;
  }

}
