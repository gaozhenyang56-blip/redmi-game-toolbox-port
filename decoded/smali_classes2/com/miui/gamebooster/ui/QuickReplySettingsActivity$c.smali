.class Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/QuickReplySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ls5/c;",
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

    iput-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$c;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Ls5/c;Ls5/c;)I
    .locals 1

    invoke-virtual {p1}, Ls5/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ls5/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ls5/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ls5/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$c;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ls5/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ls5/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ls5/c;

    check-cast p2, Ls5/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/QuickReplySettingsActivity$c;->a(Ls5/c;Ls5/c;)I

    move-result p1

    return p1
.end method
