.class public abstract Lcom/miui/autotask/taskitem/AddressTaskItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field public static final TYPE_IN_RANGE:I = 0x413

.field public static final TYPE_OUT_RANGE:I = 0x414


# instance fields
.field private AddressName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "e"
    .end annotation
.end field

.field private CityName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "f"
    .end annotation
.end field

.field private latitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field private provinceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "g"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->CityName:Ljava/lang/String;

    return-void
.end method

.method public B(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->latitude:D

    return-void
.end method

.method public C(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->longitude:D

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->provinceName:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->latitude:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->longitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 3

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->x0()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AddressTaskItem;->y()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->AddressName:Ljava/lang/String;

    return-object v0
.end method

.method public w()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->latitude:D

    return-wide v0
.end method

.method public x()D
    .locals 2

    iget-wide v0, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->longitude:D

    return-wide v0
.end method

.method public abstract y()I
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/AddressTaskItem;->AddressName:Ljava/lang/String;

    return-void
.end method
