.class Lkc/q$d;
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

    iput-object p1, p0, Lkc/q$d;->a:Lkc/q;

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
    .locals 2

    iget-object p1, p0, Lkc/q$d;->a:Lkc/q;

    invoke-static {p1, p2}, Lkc/q;->q(Lkc/q;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lkc/q$d;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->y(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lkc/q$d;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->y(Lkc/q;)Lcom/miui/permcenter/privacymanager/StatusBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permcenter/privacymanager/StatusBar;->getHighestPerm()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    if-ne p4, p1, :cond_1

    iget-object p2, p0, Lkc/q$d;->a:Lkc/q;

    invoke-static {p2}, Lkc/q;->o(Lkc/q;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3, p1}, Lec/c;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    if-nez p4, :cond_2

    iget-object p1, p0, Lkc/q$d;->a:Lkc/q;

    invoke-static {p1}, Lkc/q;->o(Lkc/q;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lec/c;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
