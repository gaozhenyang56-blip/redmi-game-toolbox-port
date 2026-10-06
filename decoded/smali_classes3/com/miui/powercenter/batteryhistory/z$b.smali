.class Lcom/miui/powercenter/batteryhistory/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/z;->u(Ljava/util/List;DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:D

.field final synthetic c:Z

.field final synthetic d:Lcom/miui/powercenter/batteryhistory/z;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/z;Ljava/util/List;DZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/z$b;->d:Lcom/miui/powercenter/batteryhistory/z;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/z$b;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/miui/powercenter/batteryhistory/z$b;->b:D

    iput-boolean p5, p0, Lcom/miui/powercenter/batteryhistory/z$b;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/z$b;->d:Lcom/miui/powercenter/batteryhistory/z;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/z$b;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/miui/powercenter/batteryhistory/z$b;->b:D

    iget-boolean v4, p0, Lcom/miui/powercenter/batteryhistory/z$b;->c:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/powercenter/batteryhistory/z;->l(Lcom/miui/powercenter/batteryhistory/z;Ljava/util/List;DZ)V

    return-void
.end method
