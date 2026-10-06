.class Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;->J()Lxb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lxb/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a$a;->a:Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lxb/d;Lxb/d;)I
    .locals 4

    invoke-virtual {p1}, Lxb/d;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lxb/d;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lxb/d;->b()J

    move-result-wide v0

    invoke-virtual {p2}, Lxb/d;->b()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lxb/d;

    check-cast p2, Lxb/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/RiskAppAuthHistoryActivity$a$a;->a(Lxb/d;Lxb/d;)I

    move-result p1

    return p1
.end method
