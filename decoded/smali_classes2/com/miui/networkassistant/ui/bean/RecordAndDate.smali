.class public final Lcom/miui/networkassistant/ui/bean/RecordAndDate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final month:I

.field private final thisMonthRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final year:I


# direct methods
.method public constructor <init>(IILjava/util/ArrayList;)V
    .locals 1
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "thisMonthRecords"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->year:I

    iput p2, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->month:I

    iput-object p3, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->thisMonthRecords:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/ArrayList;ILbk/g;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;-><init>(IILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/networkassistant/ui/bean/RecordAndDate;IILjava/util/ArrayList;ILjava/lang/Object;)Lcom/miui/networkassistant/ui/bean/RecordAndDate;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->year:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->month:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->thisMonthRecords:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->copy(IILjava/util/ArrayList;)Lcom/miui/networkassistant/ui/bean/RecordAndDate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->year:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->month:I

    return v0
.end method

.method public final component3()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->thisMonthRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final copy(IILjava/util/ArrayList;)Lcom/miui/networkassistant/ui/bean/RecordAndDate;
    .locals 1
    .param p3    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;)",
            "Lcom/miui/networkassistant/ui/bean/RecordAndDate;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "thisMonthRecords"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/RecordAndDate;-><init>(IILjava/util/ArrayList;)V

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
    instance-of v1, p1, Lcom/miui/networkassistant/ui/bean/RecordAndDate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/networkassistant/ui/bean/RecordAndDate;

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->year:I

    iget v3, p1, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->year:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->month:I

    iget v3, p1, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->month:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->thisMonthRecords:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->thisMonthRecords:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMonth()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->month:I

    return v0
.end method

.method public final getThisMonthRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/ui/bean/RecordBean$OrderBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->thisMonthRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getYear()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->year:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->year:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->month:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->thisMonthRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordAndDate(year="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", month="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->month:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", thisMonthRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/RecordAndDate;->thisMonthRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
