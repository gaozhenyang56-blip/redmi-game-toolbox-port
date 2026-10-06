.class public final synthetic Lcom/miui/gamebooster/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/service/c;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iput-wide p2, p0, Lcom/miui/gamebooster/service/c;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/service/c;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-wide v1, p0, Lcom/miui/gamebooster/service/c;->b:J

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->l(Lcom/miui/gamebooster/service/DockWindowManagerService;J)V

    return-void
.end method
