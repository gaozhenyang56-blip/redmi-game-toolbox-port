.class Lcom/miui/applicationlock/AppLockManageFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/AppLockManageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lc3/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/AppLockManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$i;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc3/b;Lc3/b;)I
    .locals 1

    invoke-virtual {p1}, Lc3/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lc3/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lc3/b;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lc3/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {p1}, Lc3/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lc3/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lc3/b;

    check-cast p2, Lc3/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/AppLockManageFragment$i;->a(Lc3/b;Lc3/b;)I

    move-result p1

    return p1
.end method
