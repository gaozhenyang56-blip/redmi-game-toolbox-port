.class public Lcom/miui/permcenter/detection/model/a;
.super Lcom/miui/permcenter/detection/model/b;
.source "SourceFile"


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/permcenter/detection/model/RiskAppInfoBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/model/b;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/detection/model/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/permcenter/detection/model/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/permcenter/detection/model/RiskAppInfoBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/detection/model/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/detection/model/a;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/detection/model/a;->c:Ljava/util/List;

    return-object v0
.end method
