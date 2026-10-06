.class public interface abstract Lcom/gzy/redmiport/compat/process/IActivityChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Stub;,
        Lcom/gzy/redmiport/compat/process/IActivityChangeListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.gzy.redmiport.compat.process.IActivityChangeListener"


# virtual methods
.method public abstract onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
.end method
