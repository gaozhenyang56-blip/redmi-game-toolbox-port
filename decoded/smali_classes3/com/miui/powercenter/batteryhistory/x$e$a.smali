.class Lcom/miui/powercenter/batteryhistory/x$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/x$e;->a(Lcom/miui/powercenter/batteryhistory/i$a;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/batteryhistory/v;

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/x$e;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/x$e;Lcom/miui/powercenter/batteryhistory/v;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/x$e$a;->b:Lcom/miui/powercenter/batteryhistory/x$e;

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/x$e$a;->a:Lcom/miui/powercenter/batteryhistory/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x$e$a;->b:Lcom/miui/powercenter/batteryhistory/x$e;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/x$e$a;->a:Lcom/miui/powercenter/batteryhistory/v;

    invoke-static {v0, v1}, Lcom/miui/powercenter/batteryhistory/x;->n(Lcom/miui/powercenter/batteryhistory/x;Lcom/miui/powercenter/batteryhistory/v;)Lcom/miui/powercenter/batteryhistory/v;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x$e$a;->b:Lcom/miui/powercenter/batteryhistory/x$e;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/x;->u()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/x$e$a;->b:Lcom/miui/powercenter/batteryhistory/x$e;

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/x$e;->a:Lcom/miui/powercenter/batteryhistory/x;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/x;->x()V

    return-void
.end method
