.class public final synthetic Lcom/miui/gamebooster/service/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/service/r;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    iput p2, p0, Lcom/miui/gamebooster/service/r;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/service/r;->a:Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;

    iget v1, p0, Lcom/miui/gamebooster/service/r;->b:I

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;->o8(Lcom/miui/gamebooster/service/DockWindowManagerService$GameBoosterWindowBinder;I)V

    return-void
.end method
