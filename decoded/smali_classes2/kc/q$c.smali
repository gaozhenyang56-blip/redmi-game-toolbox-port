.class Lkc/q$c;
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

    iput-object p1, p0, Lkc/q$c;->a:Lkc/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpActiveChanged(IILjava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lkc/q$c;->a:Lkc/q;

    invoke-static {v0, p2}, Lkc/q;->q(Lkc/q;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkc/q$c;->a:Lkc/q;

    invoke-static {p2}, Lx4/z1;->m(I)I

    move-result v3

    const/4 v6, 0x0

    move v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lkc/q;->r(Lkc/q;IILjava/lang/String;ZZ)Z

    :cond_0
    return-void
.end method

.method public synthetic onOpNoted(IILjava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lqb/c;->b(Lcom/miui/permcenter/compact/AppOpsUtilsCompat$MiuiOnOpActiveChangedListener;IILjava/lang/String;I)V

    return-void
.end method
