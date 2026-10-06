.class public interface abstract Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/IMiPassportUIControllerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract B1(Lcom/xiaomi/accountsdk/account/data/Step2LoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.end method

.method public abstract X7(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;
.end method

.method public abstract Z(Lcom/xiaomi/accountsdk/account/data/NotificationLoginEndParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.end method

.method public abstract k4(Lcom/xiaomi/accountsdk/account/data/PasswordLoginParams;)Lcom/xiaomi/accountsdk/account/data/MiLoginResult;
.end method

.method public abstract o4(Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
.end method
