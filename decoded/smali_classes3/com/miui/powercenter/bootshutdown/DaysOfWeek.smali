.class public Lcom/miui/powercenter/bootshutdown/DaysOfWeek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static DAY_MAP:[I = null

.field public static final EVERY_DAY:I = 0x7f

.field public static final LEGAL_WORK_DAY:I = 0x80

.field public static final MONDAY_TO_FRIDAY:I = 0x1f

.field public static final NO_DAY:I


# instance fields
.field private mDays:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "a"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->DAY_MAP:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    return-void
.end method

.method private g(I)Z
    .locals 2

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a([I)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    add-int/lit8 v3, v1, 0x1

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    iget v6, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    shl-int v7, v5, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    sub-int/2addr v4, v1

    aput v4, p1, v1

    move v4, v5

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_2
    if-nez v4, :cond_3

    move v4, v0

    :goto_3
    if-ge v4, v2, :cond_3

    iget v6, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    shl-int v7, v5, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    rsub-int/lit8 v2, v1, 0x7

    add-int/2addr v2, v4

    aput v2, p1, v1

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()[Z
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->g(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    return v0
.end method

.method public d(Landroid/content/Context;Ljava/util/Calendar;)I
    .locals 4

    iget v0, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_2

    invoke-virtual {p2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    invoke-static {p1, v0}, Lme/i;->b(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x7

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    rem-int/2addr p2, p1

    :goto_1
    if-ge v1, p1, :cond_4

    add-int v0, p2, v1

    rem-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public e()Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->f(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    iget v2, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    iget p1, p1, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f(Ljava/util/Calendar;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    iget v3, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    const/4 v4, 0x1

    shl-int v5, v4, v1

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v3, :cond_0

    if-ne v2, v4, :cond_1

    return v4

    :cond_0
    add-int/lit8 v3, v1, 0x2

    if-ne v2, v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public h(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    return-void
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V
    .locals 0

    iget p1, p1, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    return-void
.end method

.method public j(Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->h(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->h(IZ)V

    :goto_0
    return-void
.end method

.method public k(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120eb9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_1
    const/16 p2, 0x7f

    if-ne v1, p2, :cond_3

    const p2, 0x7f12072f

    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 p2, 0x80

    if-ne v1, p2, :cond_4

    const p2, 0x7f120ca4

    invoke-static {p1}, Lme/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p2, 0x7f120ca5

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_2
    if-lez v1, :cond_6

    and-int/lit8 p2, v1, 0x1

    if-ne p2, v3, :cond_5

    add-int/lit8 p1, p1, 0x1

    :cond_5
    shr-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance p2, Ljava/text/DateFormatSymbols;

    invoke-direct {p2}, Ljava/text/DateFormatSymbols;-><init>()V

    if-le p1, v3, :cond_7

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object p2

    :goto_3
    const/4 v1, 0x7

    if-ge v2, v1, :cond_9

    iget v1, p0, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->mDays:I

    shl-int v4, v3, v2

    and-int/2addr v1, v4

    if-eqz v1, :cond_8

    sget-object v1, Lcom/miui/powercenter/bootshutdown/DaysOfWeek;->DAY_MAP:[I

    aget v1, v1, v2

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_8

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
