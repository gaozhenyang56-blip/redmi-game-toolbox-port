.class Lcom/miui/permcenter/autostart/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/miui/permcenter/autostart/h;

.field b:Lcom/miui/permcenter/autostart/h;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/permcenter/autostart/h;

    invoke-direct {v0}, Lcom/miui/permcenter/autostart/h;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/b;->a:Lcom/miui/permcenter/autostart/h;

    new-instance v0, Lcom/miui/permcenter/autostart/h;

    invoke-direct {v0}, Lcom/miui/permcenter/autostart/h;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/b;->b:Lcom/miui/permcenter/autostart/h;

    return-void
.end method
