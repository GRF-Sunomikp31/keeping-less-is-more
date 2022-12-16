/*
* This file is an implementation of "Keeping Less is More: Point Sparsification for Visual SLAM"
* Based on ORB-SLAM2 <https://github.com/raulmur/ORB_SLAM2>
*/
/**
* This file is part of ORB-SLAM2.
* This file is a modified version of EPnP <http://cvlab.epfl.ch/EPnP/index.php>, see FreeBSD license below.
*
* Copyright (C) 2014-2016 Raúl Mur-Artal <raulmur at unizar dot es> (University of Zaragoza)
* For more information see <https://github.com/raulmur/ORB_SLAM2>
*
* ORB-SLAM2 is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* ORB-SLAM2 is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with ORB-SLAM2. If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef LOCALMAPPING_H
#define LOCALMAPPING_H

#include "Map.h"
#include "LoopClosing.h"

#include <mutex>

namespace ORB_SLAM2
{

class LoopClosing;
class Map;

class LocalMapping
{
public:
    LocalMapping(Map* pMap, KeyFrameDatabase *pDB, ORBVocabulary *pVoc, const float bMonocular);
    LoopClosing* mpLoopCloser;

    void Run(KeyFrame* pKF);
    void Reset();

    vector<double> vdKFInsert_ms; 
    vector<double> vdMPCreation_ms; 
    vector<double> vdLBA_ms; 
    vector<double> vdLMTotal_ms;

public:
    static const int &MODE;
    static const int &MAX_NUM;


protected:
    int ProcessNewKeyFrame();
    int CreateNewMapPoints();
    int MapPointCulling();
    int SearchInNeighbors();
    int KeyFrameCulling();

    cv::Mat ComputeF12(KeyFrame* &pKF1, KeyFrame* &pKF2);
    cv::Mat SkewSymmetricMatrix(const cv::Mat &v);

    bool mbMonocular;

    Map* mpMap;

    std::list<KeyFrame*> mlNewKeyFrames;
    KeyFrame* mpCurrentKeyFrame;
    std::list<MapPoint*> mlpRecentAddedMapPoints;
};

} //namespace ORB_SLAM

#endif // LOCALMAPPING_H
