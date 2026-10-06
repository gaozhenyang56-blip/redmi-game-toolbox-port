.class public Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/AppManageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearUserDataObserver"
.end annotation


# instance fields
.field a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;->a:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p2, p0, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
