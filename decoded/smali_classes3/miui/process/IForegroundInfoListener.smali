.class public interface abstract Lcom/gzy/redmiport/compat/process/IForegroundInfoListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;,
        Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.gzy.redmiport.compat.process.IForegroundInfoListener"


# virtual methods
.method public abstract onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V
.end method
