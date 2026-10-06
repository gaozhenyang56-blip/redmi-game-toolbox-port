.class Lm2/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm2/f;->t()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmiui/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I
    .locals 0

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p1

    invoke-virtual {p2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lmiui/telephony/SubscriptionInfo;

    check-cast p2, Lmiui/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Lm2/f$d;->a(Lmiui/telephony/SubscriptionInfo;Lmiui/telephony/SubscriptionInfo;)I

    move-result p1

    return p1
.end method
