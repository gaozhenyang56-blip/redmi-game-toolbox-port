.class public Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;
.super Lcom/miui/gamebooster/service/IFreeformWindow$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FreeformWindowHandlerBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;->a:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/IFreeformWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public L3(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGameBoosterMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformWindowService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;->a:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a(Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;)Lcom/miui/gamebooster/mutiwindow/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;->a:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a(Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;)Lcom/miui/gamebooster/mutiwindow/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/mutiwindow/a;->m(Z)V

    :cond_0
    return-void
.end method

.method public Y7(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQuickReplyApps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformWindowService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;->a:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a(Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;)Lcom/miui/gamebooster/mutiwindow/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;->a:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a(Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;)Lcom/miui/gamebooster/mutiwindow/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/mutiwindow/a;->o(Ljava/util/List;)V

    :cond_0
    return-void
.end method
