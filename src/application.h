/*
 * @Author: LongOS
 * @Date: 2023-05-12 16:35:35
 * @LastEditors: chang2005
 * @LastEditTime: 2023-05-12 23:18:38
 * @FilePath: /settings/src/application.h
 * @Description: 
 * 
 * Copyright (c) 2023 by LongOS, All Rights Reserved. 
 */
#ifndef APPLICATION_H
#define APPLICATION_H

#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDBusConnection>
#include "../include/interface/moduleinterface.h"

class Application : public QApplication
{
    Q_OBJECT

public:
    explicit Application(int &argc, char **argv);
    void addPage(QString title,QString name,QString page,QString iconSource,QString iconColor,QString category);
    void switchToPage(const QString &name);

private:
    void insertPlugin();
    QQmlApplicationEngine m_engine;
};

#endif // APPLICATION_H
