.class Lcom/miui/bubbles/services/BubblesService$4;
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

    iput-object p1, p0, Lcom/miui/bubbles/services/BubblesService$4;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/bubbles/services/BubblesService$4;->this$0:Lcom/miui/bubbles/services/BubblesService;

    invoke-static {p1}, Lcom/miui/bubbles/services/BubblesService;->access$200(Lcom/miui/bubbles/services/BubblesService;)Lcom/miui/bubbles/BubblesManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/bubbles/BubblesManager;->onVisibilityChanged(Z)V

    return-void
.end method
