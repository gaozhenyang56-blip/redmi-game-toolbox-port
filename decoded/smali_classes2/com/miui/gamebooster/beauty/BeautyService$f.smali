.class Lcom/miui/gamebooster/beauty/BeautyService$f;
.super Landroid/app/TaskStackListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/beauty/BeautyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/beauty/BeautyService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/beauty/BeautyService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/beauty/BeautyService$f;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 3

    const-string v0, "BeautyService"

    const-string v1, "onTaskStackChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/beauty/BeautyService$f;->a:Lcom/miui/gamebooster/beauty/BeautyService;

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Lcom/miui/gamebooster/beauty/BeautyService;->I(Lcom/miui/gamebooster/beauty/BeautyService;J)V

    return-void
.end method
