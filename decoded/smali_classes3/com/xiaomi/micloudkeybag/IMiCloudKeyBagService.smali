.class public interface abstract Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudkeybag/IMiCloudKeyBagService$Stub;
    }
.end annotation


# virtual methods
.method public abstract E3()V
.end method

.method public abstract F5(Landroid/accounts/Account;)Z
.end method

.method public abstract d0(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
.end method

.method public abstract getServiceVersion()I
.end method

.method public abstract l1()V
.end method

.method public abstract v6(Landroid/accounts/Account;Lcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
.end method

.method public abstract x7(Landroid/accounts/Account;)Lcom/xiaomi/micloudkeybag/KeyBagKeyInfo;
.end method

.method public abstract y7(Landroid/accounts/Account;[BJLcom/xiaomi/micloudkeybag/IOnKeyBagCallFinishedListener;)V
.end method
