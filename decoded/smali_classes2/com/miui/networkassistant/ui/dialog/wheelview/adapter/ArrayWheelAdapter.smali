.class public Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;
.super Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;"
    }
.end annotation


# instance fields
.field private items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/adapter/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method
