.class Lkc/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc/q;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkc/q;


# direct methods
.method constructor <init>(Lkc/q;)V
    .locals 0

    iput-object p1, p0, Lkc/q$b;->a:Lkc/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onOpActiveChanged(IILjava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lqb/c;->a(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;IILjava/lang/String;Z)V

    return-void
.end method

.method public onOpNoted(IILjava/lang/String;I)V
    .locals 6

    invoke-static {p2}, Lx4/z1;->b(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    const-string v0, "com.xiaomi.metoknlp"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    iget-object p4, p0, Lkc/q$b;->a:Lkc/q;

    invoke-static {p4, p2}, Lkc/q;->q(Lkc/q;I)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Lkc/q$b;->a:Lkc/q;

    invoke-static {p2}, Lx4/z1;->m(I)I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lkc/q;->r(Lkc/q;IILjava/lang/String;ZZ)Z

    :cond_1
    :goto_0
    return-void
.end method
