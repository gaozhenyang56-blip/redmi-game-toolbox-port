.class Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lpe/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$d;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lpe/c;Lpe/c;)I
    .locals 2

    invoke-virtual {p1}, Lpe/c;->e()I

    move-result v0

    invoke-virtual {p2}, Lpe/c;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lpe/c;->e()I

    move-result v0

    invoke-virtual {p2}, Lpe/c;->e()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$d;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Lpe/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lpe/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lpe/c;

    check-cast p2, Lpe/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/privacyapps/ui/PrivacyAppsManageFragment$d;->a(Lpe/c;Lpe/c;)I

    move-result p1

    return p1
.end method
