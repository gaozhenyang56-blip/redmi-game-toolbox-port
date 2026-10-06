.class Lcom/miui/bubbles/services/BubblesService$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/services/BubblesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/services/BubblesService;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/services/BubblesService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/services/BubblesService$3;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-static {}, Lcom/miui/common/e;->d()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lx4/g0;->c(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesService$3;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {v0}, Lcom/miui/bubbles/services/BubblesService;->access$200(Lcom/miui/bubbles/services/BubblesService;)Lcom/miui/bubbles/BubblesManager;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubblesManager;->onVisibilityChanged(Z)V

    return-void
.end method
