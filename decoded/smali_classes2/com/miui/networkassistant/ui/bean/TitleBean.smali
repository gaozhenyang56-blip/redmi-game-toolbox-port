.class public final Lcom/miui/networkassistant/ui/bean/TitleBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/bean/BaseRecordBean;


# instance fields
.field private month:I

.field private year:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/ui/bean/TitleBean;->year:I

    iput p2, p0, Lcom/miui/networkassistant/ui/bean/TitleBean;->month:I

    return-void
.end method


# virtual methods
.method public final getMonth()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/TitleBean;->month:I

    return v0
.end method

.method public final getYear()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/TitleBean;->year:I

    return v0
.end method

.method public final setMonth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/bean/TitleBean;->month:I

    return-void
.end method

.method public final setYear(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/bean/TitleBean;->year:I

    return-void
.end method
