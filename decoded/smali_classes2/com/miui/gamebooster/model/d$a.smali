.class public Lcom/miui/gamebooster/model/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/gamebooster/model/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/gamebooster/model/d;Lcom/miui/gamebooster/model/d;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/d;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/d;

    check-cast p2, Lcom/miui/gamebooster/model/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/model/d$a;->a(Lcom/miui/gamebooster/model/d;Lcom/miui/gamebooster/model/d;)I

    move-result p1

    return p1
.end method
