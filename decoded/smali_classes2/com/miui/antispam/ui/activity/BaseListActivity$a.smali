.class Lcom/miui/antispam/ui/activity/BaseListActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/BaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lm2/h$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antispam/ui/activity/BaseListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/ui/activity/BaseListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity$a;->a:Lcom/miui/antispam/ui/activity/BaseListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lm2/h$a;Lm2/h$a;)I
    .locals 5

    iget-object v0, p1, Lm2/h$a;->a:Ljava/lang/String;

    const-string v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p2, Lm2/h$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object p1, p1, Lm2/h$a;->a:Ljava/lang/String;

    iget-object p2, p2, Lm2/h$a;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p1, Lm2/h$a;->a:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p2, Lm2/h$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    iget-object v0, p2, Lm2/h$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    iget-object v0, p2, Lm2/h$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p2, Lm2/h$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lm2/h$a;

    check-cast p2, Lm2/h$a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/BaseListActivity$a;->a(Lm2/h$a;Lm2/h$a;)I

    move-result p1

    return p1
.end method
