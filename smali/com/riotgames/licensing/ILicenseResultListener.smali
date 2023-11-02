.class public interface abstract Lcom/riotgames/licensing/ILicenseResultListener;
.super Ljava/lang/Object;
.source "ILicenseResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/riotgames/licensing/ILicenseResultListener$Stub;,
        Lcom/riotgames/licensing/ILicenseResultListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.riotgames.licensing.ILicenseResultListener"


# virtual methods
.method public abstract verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
