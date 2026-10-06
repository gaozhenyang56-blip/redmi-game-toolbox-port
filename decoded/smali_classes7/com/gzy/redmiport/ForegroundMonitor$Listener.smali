.class public interface abstract Lcom/gzy/redmiport/ForegroundMonitor$Listener;
.super Ljava/lang/Object;
.source "ForegroundMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gzy/redmiport/ForegroundMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onForegroundPackage(Ljava/lang/String;I)V
.end method

.method public abstract onUnavailable(Ljava/lang/String;)V
.end method
