.class public final Lcom/miui/networkassistant/ui/bean/RecordBean$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/bean/RecordBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field private final lastPage:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trafficOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trafficOrderCreateTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrderCreateTime:Ljava/lang/Long;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrder:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->lastPage:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/networkassistant/ui/bean/RecordBean$Data;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/miui/networkassistant/ui/bean/RecordBean$Data;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrderCreateTime:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrder:Ljava/util/ArrayList;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->lastPage:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->copy(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/Boolean;)Lcom/miui/networkassistant/ui/bean/RecordBean$Data;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrderCreateTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->lastPage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/Boolean;)Lcom/miui/networkassistant/ui/bean/RecordBean$Data;
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$Data;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;-><init>(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrderCreateTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrderCreateTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrder:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrder:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->lastPage:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->lastPage:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLastPage()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->lastPage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTrafficOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTrafficOrderCreateTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrderCreateTime:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrderCreateTime:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrder:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->lastPage:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data(trafficOrderCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrderCreateTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trafficOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->trafficOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordBean$Data;->lastPage:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
