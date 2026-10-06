.class public Lcom/miui/antivirus/activity/MainActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/miui/antivirus/result/c0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/activity/MainActivity$q0;,
        Lcom/miui/antivirus/activity/MainActivity$x;,
        Lcom/miui/antivirus/activity/MainActivity$o0;,
        Lcom/miui/antivirus/activity/MainActivity$z;,
        Lcom/miui/antivirus/activity/MainActivity$y;,
        Lcom/miui/antivirus/activity/MainActivity$n0;,
        Lcom/miui/antivirus/activity/MainActivity$k0;,
        Lcom/miui/antivirus/activity/MainActivity$w;,
        Lcom/miui/antivirus/activity/MainActivity$m0;,
        Lcom/miui/antivirus/activity/MainActivity$c0;,
        Lcom/miui/antivirus/activity/MainActivity$g0;,
        Lcom/miui/antivirus/activity/MainActivity$l0;,
        Lcom/miui/antivirus/activity/MainActivity$b0;,
        Lcom/miui/antivirus/activity/MainActivity$i0;,
        Lcom/miui/antivirus/activity/MainActivity$j0;,
        Lcom/miui/antivirus/activity/MainActivity$p0;,
        Lcom/miui/antivirus/activity/MainActivity$d0;,
        Lcom/miui/antivirus/activity/MainActivity$f0;,
        Lcom/miui/antivirus/activity/MainActivity$h0;,
        Lcom/miui/antivirus/activity/MainActivity$a0;,
        Lcom/miui/antivirus/activity/MainActivity$e0;,
        Lcom/miui/antivirus/activity/MainActivity$r0;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lcom/miui/antivirus/activity/MainActivity$c0;

.field private C:Lcom/miui/antivirus/whitelist/d;

.field private D:Lo2/f;

.field private E:Lmiuix/appcompat/app/ProgressDialog;

.field private F:Lu2/a;

.field private G:Lcom/miui/antivirus/ui/CustomActionBar;

.field private H:Lcom/miui/antivirus/activity/MainActivity$b0;

.field private I:Lcom/miui/antivirus/activity/MainActivity$m0;

.field private J:Lcom/miui/antivirus/activity/MainActivity$w;

.field private K:Lx9/a;

.field private L:Lcom/miui/antivirus/activity/MainActivity$e0;

.field private M:Landroid/content/res/Configuration;

.field private N:Z

.field private O:Z

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z

.field protected b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private volatile j:Z

.field private k:Z

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/miui/antivirus/result/n;

.field private o:Ljava/lang/Runnable;

.field private p:Landroid/content/Context;

.field private q:Lcom/miui/antivirus/ui/MainActivityView;

.field private r:Lp9/a;

.field private s:Lp9/a$c;

.field private t:Lcom/miui/antivirus/activity/MainActivity$z;

.field private u:Landroid/net/wifi/WifiManager;

.field private v:Lcom/miui/antivirus/activity/MainActivity$r0;

.field private w:Lo2/g;

.field private x:Lcom/miui/antivirus/activity/MainActivity$g0;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->a:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->b:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->d:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/antivirus/activity/MainActivity;->j:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$r0;->a:Lcom/miui/antivirus/activity/MainActivity$r0;

    iput-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->v:Lcom/miui/antivirus/activity/MainActivity$r0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/antivirus/activity/MainActivity;->z:I

    iput v0, p0, Lcom/miui/antivirus/activity/MainActivity;->A:I

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$c0;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/MainActivity$c0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->O:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->P:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic A0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$c0;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    return-object p0
.end method

.method private A1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->u:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->u:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->E()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->D1()V

    invoke-static {}, Lq2/b$b;->E()V

    return-void
.end method

.method static synthetic B0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->v1(Lcom/miui/antivirus/model/a;)V

    return-void
.end method

.method private B1()V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->K:Lx9/a;

    invoke-virtual {v0, p0}, Lx9/b;->e(Landroidx/lifecycle/v;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, p0}, Lcom/miui/antivirus/result/c0;->k(Lcom/miui/antivirus/result/c0$d;Landroid/content/Context;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/miui/antivirus/result/c0;->o(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/miui/antivirus/result/c0;->j(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic C0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->q1()V

    return-void
.end method

.method private C1()V
    .locals 10

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->Y()Lw2/r;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    iget-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    if-eqz v2, :cond_0

    sget-object v0, Lw2/r;->e:Lw2/r;

    :cond_0
    invoke-virtual {v1, v0}, Lcom/miui/antivirus/ui/MainActivityView;->o(Lw2/r;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->P()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v1}, Lo2/g;->d0()I

    move-result v1

    sub-int v2, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100057

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100058

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->setScanResult(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method static synthetic D0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$r0;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->v:Lcom/miui/antivirus/activity/MainActivity$r0;

    return-object p0
.end method

.method private D1()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->getResultControl()Lcom/miui/antivirus/result/c0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v1}, Lo2/g;->P()I

    move-result v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    iget-boolean v3, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/miui/antivirus/ui/MainActivityView;->i(IZZ)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "antivirus_last_risk_count"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->Z1()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/antivirus/activity/MainActivity;->j:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/antivirus/result/h;->a()Lcom/miui/antivirus/result/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c0;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->n:Lcom/miui/antivirus/result/n;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$k0;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$k0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic E0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$r0;)Lcom/miui/antivirus/activity/MainActivity$r0;
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->v:Lcom/miui/antivirus/activity/MainActivity$r0;

    return-object p1
.end method

.method static synthetic F0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->r1()V

    return-void
.end method

.method static synthetic G0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->x1()V

    return-void
.end method

.method private G1(F)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->setContentAlpha(F)V

    return-void
.end method

.method static synthetic H0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->n1()V

    return-void
.end method

.method private H1()V
    .locals 9

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/high16 v1, 0x1040000

    const v2, 0x7f121716

    const v3, 0x7f121718

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leg/o;->c(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->S1()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/miui/antivirus/activity/MainActivity$p;

    invoke-direct {v7, p0}, Lcom/miui/antivirus/activity/MainActivity$p;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    new-instance v8, Lcom/miui/antivirus/activity/MainActivity$q;

    invoke-direct {v8, p0}, Lcom/miui/antivirus/activity/MainActivity$q;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/miui/securityscan/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lqf/c;->M0(Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lw2/i;

    new-instance v4, Lcom/miui/antivirus/activity/MainActivity$r;

    invoke-direct {v4, p0}, Lcom/miui/antivirus/activity/MainActivity$r;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v0, v4}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v4, Lw2/i;

    new-instance v5, Lcom/miui/antivirus/activity/MainActivity$s;

    invoke-direct {v5, p0}, Lcom/miui/antivirus/activity/MainActivity$s;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v4, v5}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v5, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/miui/antivirus/activity/MainActivity;->N:Z

    if-eqz v5, :cond_2

    const v2, 0x7f121717

    :cond_2
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/antivirus/activity/MainActivity;->N:Z

    if-eqz v3, :cond_3

    const v3, 0x7f121915

    goto :goto_0

    :cond_3
    const v3, 0x7f120f48

    :goto_0
    invoke-virtual {v2, v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v0, v1}, Lw2/i;->c(Landroid/app/Dialog;)V

    invoke-virtual {v4, v1}, Lw2/i;->c(Landroid/app/Dialog;)V

    :goto_1
    return-void
.end method

.method static synthetic I0(Lcom/miui/antivirus/activity/MainActivity;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->G1(F)V

    return-void
.end method

.method private I1()V
    .locals 8

    invoke-static {p0}, Lef/x;->e(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x61a8000

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    iput-boolean v3, p0, Lcom/miui/antivirus/activity/MainActivity;->f:Z

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securityscan/scanner/ScoreManager;->q()I

    move-result v2

    const/16 v4, 0x50

    if-ge v2, v4, :cond_1

    iput-boolean v3, p0, Lcom/miui/antivirus/activity/MainActivity;->g:Z

    :cond_1
    iget-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->f:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->g:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto/16 :goto_5

    :cond_3
    :goto_0
    new-instance v2, Lw2/i;

    new-instance v4, Lcom/miui/antivirus/activity/MainActivity$b;

    invoke-direct {v4, p0}, Lcom/miui/antivirus/activity/MainActivity$b;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v2, v4}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v4, Lw2/i;

    new-instance v5, Lcom/miui/antivirus/activity/MainActivity$c;

    invoke-direct {v5, p0}, Lcom/miui/antivirus/activity/MainActivity$c;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v4, v5}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v5, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v6, p0, Lcom/miui/antivirus/activity/MainActivity;->f:Z

    if-eqz v6, :cond_4

    const v6, 0x7f12008b

    goto :goto_1

    :cond_4
    const v6, 0x7f120808

    :goto_1
    invoke-virtual {v5, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/miui/antivirus/activity/MainActivity;->f:Z

    if-eqz v6, :cond_5

    const v6, 0x7f1207fb

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0, v0, v1}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {p0, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-static {}, Lw2/q;->a()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antivirus/activity/MainActivity;->f:Z

    if-eqz v1, :cond_6

    const v1, 0x7f1207fd

    goto :goto_3

    :cond_6
    const v1, 0x7f120079

    :goto_3
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v2, v0}, Lw2/i;->c(Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Lw2/i;->c(Landroid/app/Dialog;)V

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->f:Z

    if-eqz v0, :cond_7

    const-string v0, "clean_master"

    goto :goto_4

    :cond_7
    const-string v0, "home_page_optimise"

    :goto_4
    invoke-static {v0}, Lq2/b$b;->e(Ljava/lang/String;)V

    :goto_5
    return-void
.end method

.method static synthetic J0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/ui/MainActivityView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    return-object p0
.end method

.method private J1(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0e04ff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b0312

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->j1(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p1, 0x7f0b0262

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v2, 0x7f0b0b38

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0319

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120118

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f120119

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b030e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    new-instance v3, Lcom/miui/antivirus/activity/MainActivity$t;

    invoke-direct {v3, p0, v2}, Lcom/miui/antivirus/activity/MainActivity$t;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lmiuix/slidingwidget/widget/SlidingButton;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lw2/i;

    new-instance v3, Lcom/miui/antivirus/activity/MainActivity$u;

    invoke-direct {v3, p0, v2}, Lcom/miui/antivirus/activity/MainActivity$u;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lmiuix/slidingwidget/widget/SlidingButton;)V

    invoke-direct {p1, v3}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12011e

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f121917

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121915

    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$v;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/MainActivity$v;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p1, v0}, Lw2/i;->c(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic K0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->B1()V

    return-void
.end method

.method private K1(Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/antivirus/activity/MainActivity;",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$i0;

    invoke-direct {v0, p1, p2}, Lcom/miui/antivirus/activity/MainActivity$i0;-><init>(Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$j0;

    invoke-direct {v1, p1, p2}, Lcom/miui/antivirus/activity/MainActivity$j0;-><init>(Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lw2/t;->R(Landroid/content/Context;Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Z)V

    return-void
.end method

.method static synthetic L0(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    return p0
.end method

.method private L1(Lcom/miui/antivirus/result/d0;)V
    .locals 2

    new-instance v0, Lu2/a;

    invoke-direct {v0, p0}, Lu2/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0, v1, p1}, Lu2/a;->n(Landroid/view/View;Lcom/miui/antivirus/result/d0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    invoke-virtual {p1}, Lu2/a;->s()V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    invoke-virtual {p1}, Lu2/a;->w()Z

    :cond_0
    return-void
.end method

.method static synthetic M0(Lcom/miui/antivirus/activity/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    return p1
.end method

.method private M1()V
    .locals 4

    new-instance v0, Lw2/i;

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$e;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/MainActivity$e;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v0, v1}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12068d

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120674

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120f48

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120499

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v0, v1}, Lw2/i;->c(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic N0(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/MainActivity;->a:Z

    return p0
.end method

.method private N1()V
    .locals 4

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lw2/i;

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$d;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/MainActivity$d;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v0, v1}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12068d

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120674

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120f48

    invoke-virtual {v1, v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120499

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v0, v1}, Lw2/i;->c(Landroid/app/Dialog;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic O0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->P1(Lcom/miui/guardprovider/aidl/UpdateInfo;)V

    return-void
.end method

.method static synthetic P0(Lcom/miui/antivirus/activity/MainActivity;)Lo2/g;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    return-object p0
.end method

.method private P1(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "engine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->updateResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiVirusMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->updateResult:I

    const-string v1, "success"

    const-string v2, "all"

    const v3, 0x7f120125

    const v4, 0x7f120127

    if-eqz v0, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    move v3, v4

    goto :goto_3

    :cond_0
    invoke-static {}, Lw2/t;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    const-string v0, "Avast"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    const-string p1, "fail"

    invoke-static {p1}, Lq2/b$a;->m(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const v3, 0x7f120128

    invoke-static {}, Lw2/t;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->D:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5, v2}, Lo2/f;->f(JLjava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->D:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object p1, p1, Lcom/miui/guardprovider/aidl/UpdateInfo;->engineName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, p1}, Lo2/f;->f(JLjava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->D:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lo2/f;->h(J)V

    invoke-static {v1}, Lq2/b$a;->m(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->E:Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->h1(Lmiuix/appcompat/app/ProgressDialog;)V

    return-void
.end method

.method static synthetic Q0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->V1()V

    return-void
.end method

.method static synthetic R0(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    return-object p0
.end method

.method static synthetic S0(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/MainActivity;->e:Z

    return p0
.end method

.method private S1()V
    .locals 4

    invoke-static {}, Lo2/h;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->l1()Z

    move-result v0

    new-instance v2, Lcom/miui/antivirus/activity/MainActivity$d0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/antivirus/activity/MainActivity$d0;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$k;)V

    invoke-static {v2}, Lx4/f;->b(Ljava/lang/Runnable;)V

    if-nez v0, :cond_0

    invoke-static {v1}, Lo2/h;->D(Z)V

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->i:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->l1()Z

    move-result v1

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->O:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->f1()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->D:Lo2/f;

    invoke-virtual {v0}, Lo2/f;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->D:Lo2/f;

    invoke-virtual {v0}, Lo2/f;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p0}, Lcom/miui/antivirus/activity/MainActivity;->W1(Landroid/content/Context;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->m1()V

    const-string v0, "scan"

    invoke-static {v0}, Lq2/b$a;->s(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic T0(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/MainActivity;->f:Z

    return p0
.end method

.method private T1()V
    .locals 3

    const v0, 0x7f120129

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v2}, Lmiuix/appcompat/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->E:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$m;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/MainActivity$m;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$x;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$x;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic U0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$g0;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->x:Lcom/miui/antivirus/activity/MainActivity$g0;

    return-object p0
.end method

.method private U1()V
    .locals 4

    iget v0, p0, Lcom/miui/antivirus/activity/MainActivity;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->r:Lp9/a;

    new-instance v2, Lcom/miui/antivirus/activity/MainActivity$o0;

    iget-object v3, p0, Lcom/miui/antivirus/activity/MainActivity;->x:Lcom/miui/antivirus/activity/MainActivity$g0;

    invoke-direct {v2, v0, v3}, Lcom/miui/antivirus/activity/MainActivity$o0;-><init>(ILcom/miui/antivirus/activity/MainActivity$g0;)V

    invoke-virtual {v1, v2}, Lp9/a;->i(Lp9/a$b;)V

    :cond_0
    return-void
.end method

.method static synthetic V0(Lcom/miui/antivirus/activity/MainActivity;)Lu2/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    return-object p0
.end method

.method private V1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->d0()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v1}, Lo2/g;->b0()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v0}, Lo2/h;->J(I)V

    invoke-static {v1}, Lo2/h;->I(I)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/securityscan/scanner/ScoreManager;->I(I)V

    invoke-virtual {v2, v0}, Lcom/miui/securityscan/scanner/ScoreManager;->N(I)V

    return-void
.end method

.method static synthetic W0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->T1()V

    return-void
.end method

.method static synthetic X0(Lcom/miui/antivirus/activity/MainActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private X1()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/antivirus/activity/MainActivity$p0;

    invoke-direct {v2, v1}, Lcom/miui/antivirus/activity/MainActivity$p0;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v2, "notification"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3f4

    const-string v2, "notificationId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "module_click"

    const-string v2, "Antivirus"

    invoke-static {v1, v2, v0}, Lq4/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-static {p0}, Lw2/t;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic Y0(Lcom/miui/antivirus/activity/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/MainActivity;->j:Z

    return p1
.end method

.method private Y1()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->k:Z

    if-nez v0, :cond_1

    const-string v0, "AntiVirusMainActivity"

    const-string v1, "unbindGpServiceAndRemoveCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->r:Lp9/a;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->s:Lp9/a$c;

    invoke-virtual {v0, v1}, Lp9/a;->o(Lp9/a$c;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->r:Lp9/a;

    invoke-virtual {v0}, Lp9/a;->m()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->t:Lcom/miui/antivirus/activity/MainActivity$z;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->r:Lp9/a;

    invoke-virtual {v1, v0}, Lp9/a;->l(Lp9/a$b;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->k:Z

    :cond_1
    return-void
.end method

.method static synthetic Z0(Lcom/miui/antivirus/activity/MainActivity;)Lo2/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->D:Lo2/f;

    return-object p0
.end method

.method private Z1()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->e0()Lcom/miui/antivirus/model/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v1}, Lo2/g;->U()Lcom/miui/antivirus/model/d;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v2}, Lo2/g;->R()Lcom/miui/antivirus/model/d;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v3}, Lo2/g;->S()Z

    move-result v3

    iget-boolean v4, p0, Lcom/miui/antivirus/activity/MainActivity;->O:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    iget-object v5, p0, Lcom/miui/antivirus/activity/MainActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lo2/g;->F(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/miui/antivirus/activity/MainActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v4, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v4}, Lo2/g;->c0()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v5}, Lo2/g;->a0()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v6

    :goto_0
    iget-object v9, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {v9}, Lm2/a;->i(Landroid/content/Context;)Z

    move-result v9

    xor-int/2addr v9, v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lx4/a0;->D()Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Lcom/miui/antivirus/model/d;

    sget-object v12, Lcom/miui/antivirus/model/d$c;->h:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v11, v12}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    goto :goto_1

    :cond_2
    new-instance v11, Lcom/miui/antivirus/model/d;

    sget-object v12, Lcom/miui/antivirus/model/d$c;->a:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v11, v12}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    :goto_1
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v11, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const v12, 0x7f1215d8

    if-nez v11, :cond_3

    invoke-virtual {v0}, Lcom/miui/antivirus/model/j;->d()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Lcom/miui/antivirus/model/d;

    sget-object v13, Lcom/miui/antivirus/model/d$c;->b:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v11, v13}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    invoke-virtual {v11, v7}, Lcom/miui/antivirus/model/d;->K(Z)V

    const v13, 0x7f121592

    invoke-static {p0, v13}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/miui/antivirus/model/d;->S(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/miui/antivirus/model/d;->G(Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    const-string v0, "IN"

    invoke-static {v0}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {}, Lo2/h;->r()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/miui/antivirus/model/d;

    sget-object v1, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    sget-object v1, Lcom/miui/antivirus/model/d$b;->g:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Lw2/t;->y(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v6

    goto :goto_2

    :cond_7
    move v0, v7

    :goto_2
    if-eqz v0, :cond_b

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    if-eqz v3, :cond_b

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v2, v7}, Lcom/miui/antivirus/model/a;->setTop(Z)V

    invoke-virtual {v2, v7}, Lcom/miui/antivirus/model/a;->setBottom(Z)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v9, :cond_a

    new-instance v0, Lcom/miui/antivirus/model/d;

    sget-object v1, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    sget-object v1, Lcom/miui/antivirus/model/d$b;->f:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setTop(Z)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setBottom(Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v3, :cond_b

    new-instance v0, Lcom/miui/antivirus/model/d;

    sget-object v1, Lcom/miui/antivirus/model/d$c;->e:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    sget-object v1, Lcom/miui/antivirus/model/d$b;->e:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setTop(Z)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setBottom(Z)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/miui/antivirus/model/d;

    sget-object v1, Lcom/miui/antivirus/model/d$c;->b:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    new-instance v1, Lcom/miui/antivirus/model/d;

    sget-object v2, Lcom/miui/antivirus/model/d$c;->g:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v1, v2}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    sget-object v2, Lcom/miui/antivirus/model/d$b;->b:Lcom/miui/antivirus/model/d$b;

    invoke-virtual {v1, v2}, Lcom/miui/antivirus/model/d;->B(Lcom/miui/antivirus/model/d$b;)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/d;->K(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100126

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v6

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/d;->S(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/d;->G(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/d;

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setBottom(Z)V

    new-instance v0, Lcom/miui/antivirus/model/d;

    sget-object v1, Lcom/miui/antivirus/model/d$c;->b:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v0, v1}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/d;->K(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100125

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/d;->S(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/model/d;->G(Ljava/lang/String;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_d
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    invoke-virtual {v0}, Lo2/g;->i0()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    invoke-virtual {v0}, Lo2/g;->L()I

    move-result v0

    new-instance v1, Lcom/miui/antivirus/model/d;

    sget-object v2, Lcom/miui/antivirus/model/d$c;->b:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v1, v2}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    if-nez v0, :cond_e

    const v0, 0x7f121713

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10012d

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Lcom/miui/antivirus/model/d;->S(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/antivirus/model/d;

    sget-object v2, Lcom/miui/antivirus/model/d$c;->f:Lcom/miui/antivirus/model/d$c;

    invoke-direct {v0, v2}, Lcom/miui/antivirus/model/d;-><init>(Lcom/miui/antivirus/model/d$c;)V

    sget-object v2, Lcom/miui/antivirus/model/d$d;->d:Lcom/miui/antivirus/model/d$d;

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/model/d;->M(Lcom/miui/antivirus/model/d$d;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object v10
.end method

.method static synthetic a1(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/MainActivity;->N:Z

    return p0
.end method

.method private a2()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antivirus/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b1(Lcom/miui/antivirus/activity/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/MainActivity;->N:Z

    return p1
.end method

.method static synthetic c1(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->H1()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->D1()V

    return-void
.end method

.method static synthetic d1(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->S1()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e1(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->a2()V

    return-void
.end method

.method static synthetic f0(Lcom/miui/antivirus/activity/MainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private f1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->setAutoToResult(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    const/16 v1, 0x40b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    const/16 v1, 0x41b

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->m1()V

    return-void
.end method

.method private g1()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lu2/b;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lu2/a;->x()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu2/a;->v(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    invoke-virtual {v0}, Lu2/a;->m()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    invoke-virtual {v0}, Lu2/a;->l()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic h0(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/MainActivity;->h:Z

    return p0
.end method

.method private h1(Lmiuix/appcompat/app/ProgressDialog;)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->m1()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic i0(Lcom/miui/antivirus/activity/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/MainActivity;->h:Z

    return p1
.end method

.method private i1(Lw2/r;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "stop_enter_result"

    :goto_0
    invoke-static {v0}, Lq2/b$a;->l(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lw2/r;->b:Lw2/r;

    if-ne p1, v0, :cond_1

    const-string v0, "enter_result_safe"

    goto :goto_0

    :cond_1
    const-string v0, "enter_result_risky"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    iget-boolean v1, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    if-eqz v1, :cond_2

    sget-object p1, Lw2/r;->e:Lw2/r;

    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->o(Lw2/r;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->P()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/antivirus/ui/MainActivityView;->i(IZZ)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    const/16 v0, 0x401

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x320

    invoke-virtual {p1, v0, v1, v2}, Lw4/e;->b(ILjava/lang/Object;I)V

    return-void
.end method

.method private initViewTreeOwners()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/z0;->a(Landroid/view/View;Landroidx/lifecycle/v;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/a1;->b(Landroid/view/View;Landroidx/lifecycle/y0;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lx0/e;->a(Landroid/view/View;Lx0/d;)V

    return-void
.end method

.method static synthetic j0(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/MainActivity;->i:Z

    return p0
.end method

.method private j1(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/b$b;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lo2/b$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const p1, 0x7f12011b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.sec.miui.com/res/docs/disclaimer/av/privacy?lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&on="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic k0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->K1(Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V

    return-void
.end method

.method private k1()V
    .locals 2

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/CustomActionBar;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->G:Lcom/miui/antivirus/ui/CustomActionBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/CustomActionBar;->setTitle(Ljava/lang/String;)V

    invoke-static {p0}, Lw2/t;->E(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lw2/t;->B()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->G:Lcom/miui/antivirus/ui/CustomActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/CustomActionBar;->setIsShowSecondTitle(Z)V

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->G:Lcom/miui/antivirus/ui/CustomActionBar;

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$o;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/MainActivity$o;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/CustomActionBar;->setActionBarEventListener(Lcom/miui/antivirus/ui/CustomActionBar$a;)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->J1(Ljava/util/List;)V

    return-void
.end method

.method private l1()Z
    .locals 8

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo2/c;->d(Landroid/content/Context;)I

    move-result v3

    invoke-static {v0}, Lo2/c;->e(Landroid/content/Context;)J

    move-result-wide v4

    const/4 v0, 0x3

    if-ge v3, v0, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    invoke-static {v4, v5}, Lx4/x1;->c(J)I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$b0;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$b0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->H:Lcom/miui/antivirus/activity/MainActivity$b0;

    invoke-virtual {v0, v3}, Lcom/miui/antivirus/activity/MainActivity$b0;->c(I)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->H:Lcom/miui/antivirus/activity/MainActivity$b0;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1

    :cond_1
    return v2

    :cond_2
    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$b0;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$b0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->H:Lcom/miui/antivirus/activity/MainActivity$b0;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v1
.end method

.method static synthetic m0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->U1()V

    return-void
.end method

.method private m1()V
    .locals 2

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$n;->d:[I

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->v:Lcom/miui/antivirus/activity/MainActivity$r0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->O:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->f1()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$r0;->b:Lcom/miui/antivirus/activity/MainActivity$r0;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->v:Lcom/miui/antivirus/activity/MainActivity$r0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->d:Z

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$z;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$z;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->t:Lcom/miui/antivirus/activity/MainActivity$z;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->r:Lp9/a;

    invoke-virtual {v1, v0}, Lp9/a;->i(Lp9/a$b;)V

    invoke-static {}, Lq2/b$a;->k()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->N1()V

    :goto_0
    return-void
.end method

.method static synthetic n0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->Y1()V

    return-void
.end method

.method private n1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu2/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    invoke-virtual {v0}, Lu2/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    invoke-virtual {v0}, Lu2/a;->m()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$n;->d:[I

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->v:Lcom/miui/antivirus/activity/MainActivity$r0;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->I1()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->e:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->M1()V

    :goto_1
    return-void
.end method

.method static synthetic o0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$e0;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/activity/MainActivity;->L:Lcom/miui/antivirus/activity/MainActivity$e0;

    return-object p0
.end method

.method private o1(Lr2/a;)V
    .locals 9

    invoke-virtual {p1}, Lr2/a;->b()Lcom/miui/antivirus/model/d;

    move-result-object v0

    invoke-virtual {p1}, Lr2/a;->c()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v1, :cond_7

    sget-object p1, Lcom/miui/antivirus/activity/MainActivity$n;->b:[I

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->h()Lcom/miui/antivirus/model/d$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v6, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->w()I

    move-result p1

    if-ne p1, v5, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    move p1, v7

    :goto_0
    new-instance v1, Lcom/miui/antivirus/model/g;

    sget-object v2, Lcom/miui/antivirus/model/a$a;->d:Lcom/miui/antivirus/model/a$a;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v8, p1}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v6}, Lcom/miui/antivirus/model/a;->e(Z)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_f

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setTop(Z)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setBottom(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1, v0}, Lo2/g;->q(Lcom/miui/antivirus/model/d;)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object p1

    sget-object v1, Lo2/g$l;->a:Lo2/g$l;

    if-eq p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    :goto_1
    new-instance p1, Lcom/miui/antivirus/model/g;

    sget-object v1, Lcom/miui/antivirus/model/a$a;->d:Lcom/miui/antivirus/model/a$a;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v8, v6}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_f

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setTop(Z)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setBottom(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1, v0}, Lo2/g;->r(Lcom/miui/antivirus/model/d;)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lq2/b$b;->f(ZLjava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->A()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0, p1}, Lo2/g;->q0(Z)V

    new-instance v0, Lcom/miui/antivirus/model/g;

    sget-object v1, Lcom/miui/antivirus/model/a$a;->c:Lcom/miui/antivirus/model/a$a;

    const v2, 0x7f1202c6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v8, p1}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_5
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1, v0}, Lo2/g;->p0(Lcom/miui/antivirus/model/d;)V

    goto/16 :goto_5

    :cond_6
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1, v0}, Lo2/g;->r0(Lcom/miui/antivirus/model/d;)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p1}, Lr2/a;->c()I

    move-result v1

    if-ne v6, v1, :cond_d

    invoke-virtual {p1}, Lr2/a;->e()Z

    move-result v0

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$n;->c:[I

    invoke-virtual {p1}, Lr2/a;->d()Lcom/miui/antivirus/model/j$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Lcom/miui/antivirus/model/g;

    sget-object v1, Lcom/miui/antivirus/model/a$a;->a:Lcom/miui/antivirus/model/a$a;

    const v2, 0x7f121c85

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v8, v0}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    sget-object v2, Lcom/miui/antivirus/model/j$a;->e:Lcom/miui/antivirus/model/j$a;

    goto :goto_2

    :cond_9
    new-instance p1, Lcom/miui/antivirus/model/g;

    sget-object v1, Lcom/miui/antivirus/model/a$a;->a:Lcom/miui/antivirus/model/a$a;

    const v2, 0x7f121c87

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v8, v0}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    sget-object v2, Lcom/miui/antivirus/model/j$a;->d:Lcom/miui/antivirus/model/j$a;

    goto :goto_2

    :cond_a
    new-instance p1, Lcom/miui/antivirus/model/g;

    sget-object v1, Lcom/miui/antivirus/model/a$a;->a:Lcom/miui/antivirus/model/a$a;

    const v2, 0x7f121c89

    invoke-static {p0, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v8, v0}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    sget-object v2, Lcom/miui/antivirus/model/j$a;->c:Lcom/miui/antivirus/model/j$a;

    goto :goto_2

    :cond_b
    new-instance p1, Lcom/miui/antivirus/model/g;

    sget-object v1, Lcom/miui/antivirus/model/a$a;->a:Lcom/miui/antivirus/model/a$a;

    const v2, 0x7f121c88

    invoke-static {p0, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v8, v0}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    sget-object v2, Lcom/miui/antivirus/model/j$a;->b:Lcom/miui/antivirus/model/j$a;

    goto :goto_2

    :cond_c
    new-instance p1, Lcom/miui/antivirus/model/g;

    sget-object v1, Lcom/miui/antivirus/model/a$a;->a:Lcom/miui/antivirus/model/a$a;

    const v2, 0x7f121c86

    invoke-static {p0, v2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v8, v0}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    sget-object v2, Lcom/miui/antivirus/model/j$a;->a:Lcom/miui/antivirus/model/j$a;

    :goto_2
    invoke-virtual {v1, v2, v0}, Lo2/g;->t0(Lcom/miui/antivirus/model/j$a;Z)V

    move-object v8, p1

    :goto_3
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lr2/a;->c()I

    move-result p1

    if-ne v5, p1, :cond_f

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object p1

    sget-object v1, Lo2/g$l;->d:Lo2/g$l;

    if-ne p1, v1, :cond_e

    move p1, v6

    goto :goto_4

    :cond_e
    move p1, v7

    :goto_4
    new-instance v1, Lcom/miui/antivirus/model/g;

    sget-object v2, Lcom/miui/antivirus/model/a$a;->e:Lcom/miui/antivirus/model/a$a;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v8, p1}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_f

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setTop(Z)V

    invoke-virtual {v0, v7}, Lcom/miui/antivirus/model/a;->setBottom(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1, v0}, Lo2/g;->r(Lcom/miui/antivirus/model/d;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1, v0}, Lo2/g;->p(Lcom/miui/antivirus/model/d;)V

    invoke-virtual {v0}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lq2/b$b;->f(ZLjava/lang/String;)V

    :cond_f
    :goto_5
    return-void
.end method

.method static synthetic p0(Lcom/miui/antivirus/activity/MainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/activity/MainActivity;->z:I

    return p1
.end method

.method private p1()V
    .locals 6

    const-string v0, "AntiVirusMainActivity"

    const-string v1, "onFinishDefaultSMSCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/antivirus/model/g;

    sget-object v1, Lcom/miui/antivirus/model/a$a;->c:Lcom/miui/antivirus/model/a$a;

    const v2, 0x7f1202c5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Lcom/miui/antivirus/model/g;

    const v4, 0x7f121726

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {v5}, Lm2/a;->i(Landroid/content/Context;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v1, v4, v3, v5}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic q0(Lcom/miui/antivirus/activity/MainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/antivirus/activity/MainActivity;->d:Z

    return p0
.end method

.method private q1()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->g1()V

    const-string v0, "AntiVirusMainActivity"

    const-string v1, "onFinishScanAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->e:Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->O()Lw2/r;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v2, Lcom/miui/antivirus/ui/MainHandleBar$d;->e:Lcom/miui/antivirus/ui/MainHandleBar$d;

    sget-object v3, Lw2/r;->b:Lw2/r;

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->a:Lcom/miui/antivirus/ui/MainHandleBar$c;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$c;->b:Lcom/miui/antivirus/ui/MainHandleBar$c;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/miui/antivirus/ui/MainActivityView;->p(Lcom/miui/antivirus/ui/MainHandleBar$d;Lcom/miui/antivirus/ui/MainHandleBar$c;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->Z1()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/antivirus/result/h;->a()Lcom/miui/antivirus/result/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/miui/antivirus/result/n;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/antivirus/result/n;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lw4/e;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->n:Lcom/miui/antivirus/result/n;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->m(Lcom/miui/antivirus/result/n;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->Y()Lw2/r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/antivirus/activity/MainActivity;->i1(Lw2/r;)V

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$y;

    invoke-direct {v1, p0, v0}, Lcom/miui/antivirus/activity/MainActivity$y;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lw2/r;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic r0(Lcom/miui/antivirus/activity/MainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/activity/MainActivity;->d:Z

    return p1
.end method

.method private r1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->W()J

    move-result-wide v0

    invoke-static {v0, v1}, Lq2/b$a;->p(J)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lo2/g;->Q(Ljava/lang/Boolean;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lq2/b$a;->u(J)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->b0()I

    move-result v0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v1}, Lo2/g;->Z()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lq2/b$a;->t(J)V

    invoke-static {p0}, Lq2/b$b;->z(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic s0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->z1()V

    return-void
.end method

.method private s1()V
    .locals 8

    const-string v0, "AntiVirusMainActivity"

    const-string v1, "onFinishSystemCheck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v0}, Lo2/g;->U()Lcom/miui/antivirus/model/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/miui/antivirus/model/h;

    invoke-virtual {v3}, Lcom/miui/antivirus/model/h;->X()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    check-cast v0, Lcom/miui/antivirus/model/h;

    invoke-virtual {v0}, Lcom/miui/antivirus/model/h;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    new-instance v0, Lcom/miui/antivirus/model/g;

    sget-object v4, Lcom/miui/antivirus/model/a$a;->b:Lcom/miui/antivirus/model/a$a;

    const v5, 0x7f120cf9

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Lcom/miui/antivirus/model/g;

    const v5, 0x7f120cfa

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Lcom/miui/antivirus/model/g;

    const v5, 0x7f121725

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lo2/h;->r()Z

    move-result v7

    xor-int/2addr v2, v7

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/miui/antivirus/model/g;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lo2/h;->t()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lo2/h;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic t0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->w1(Lcom/miui/antivirus/model/a$a;)V

    return-void
.end method

.method private t1(Lcom/miui/antivirus/model/d;)V
    .locals 8

    const-string v0, "AntiVirusMainActivity"

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$n;->b:[I

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->h()Lcom/miui/antivirus/model/d$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const v2, 0x7f121a83

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_register_foreground_notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lq2/b$b;->i()V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {p1, v3}, Lah/a;->b(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->D1()V

    invoke-static {}, Lq2/b$b;->b()V

    goto/16 :goto_3

    :pswitch_2
    new-instance v0, Lw2/i;

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$a;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/activity/MainActivity$a;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/d;)V

    invoke-direct {v0, v1}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1202b7

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1202b6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->i()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v0, p1}, Lw2/i;->c(Landroid/app/Dialog;)V

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    const v0, 0x7f1202c0

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->D1()V

    invoke-static {}, Lq2/b$b;->D()V

    goto/16 :goto_3

    :pswitch_4
    new-instance p1, Lcom/miui/antivirus/activity/MainActivity$w;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/activity/MainActivity$w;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->J:Lcom/miui/antivirus/activity/MainActivity$w;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lq2/b$b;->j()V

    goto/16 :goto_3

    :pswitch_5
    :try_start_0
    invoke-static {}, Lw2/t;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.google.android.apps.messaging"

    goto :goto_0

    :cond_0
    const-string p1, "com.android.mms"

    :goto_0
    const-string v1, "com.android.internal.telephony.SmsApplication"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setDefaultApplication"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    aput-object p1, v5, v3

    invoke-static {v0, v1, v2, v6, v5}, Lbh/e;->f(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "setDefaultApplication exception!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    const v0, 0x7f1202b9

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1}, Lo2/g;->z()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->D1()V

    invoke-static {}, Lq2/b$b;->c()V

    goto :goto_3

    :pswitch_6
    invoke-static {}, Lx4/z1;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    const v0, 0x7f1215d1

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_1
    check-cast p1, Lcom/miui/antivirus/model/h;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/h;->X()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/miui/antivirus/activity/MainActivity$m0;

    invoke-direct {p1, p0}, Lcom/miui/antivirus/activity/MainActivity$m0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->I:Lcom/miui/antivirus/activity/MainActivity$m0;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lq2/b$b;->n()V

    goto :goto_3

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "start_by_safepay"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.updater"

    const-string v1, "com.android.updater.MainActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "user_action"

    const-string v1, "user_action_update"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    const v0, 0x7f1215d2

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    invoke-static {}, Lq2/b$b;->C()V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic u0(Lcom/miui/antivirus/activity/MainActivity;Lr2/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->o1(Lr2/a;)V

    return-void
.end method

.method private u1(Lcom/miui/antivirus/model/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->b()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    check-cast p1, Lcom/miui/antivirus/model/d;

    invoke-virtual {v0, p1}, Lo2/g;->m0(Lcom/miui/antivirus/model/d;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lo2/h;->m()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lo2/h;->T(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    check-cast p1, Lcom/miui/antivirus/model/d;

    invoke-virtual {v0, p1}, Lo2/g;->n0(Lcom/miui/antivirus/model/d;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->C:Lcom/miui/antivirus/whitelist/d;

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/whitelist/d;->b(Lcom/miui/antivirus/model/d;)V

    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->s()Lo2/g$l;

    move-result-object v0

    sget-object v3, Lo2/g$l;->d:Lo2/g$l;

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1}, Lcom/miui/antivirus/model/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lq2/b$b;->g(ZZLjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lo2/h;->U(Z)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lo2/h;->R(Z)V

    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1}, Lo2/g;->B()V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lo2/h;->X(Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1}, Lo2/g;->E()V

    :goto_1
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->D1()V

    return-void
.end method

.method static synthetic v0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->s1()V

    return-void
.end method

.method private v1(Lcom/miui/antivirus/model/a;)V
    .locals 2

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$n;->a:[I

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->a()Lcom/miui/antivirus/model/a$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1}, Lo2/g;->I()Lw2/r;

    move-result-object p1

    sget-object v0, Lw2/r;->b:Lw2/r;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$d;->d:Lcom/miui/antivirus/ui/MainHandleBar$d;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1}, Lo2/g;->T()Lw2/r;

    move-result-object p1

    sget-object v0, Lw2/r;->b:Lw2/r;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$d;->c:Lcom/miui/antivirus/ui/MainHandleBar$d;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1}, Lo2/g;->V()Lw2/r;

    move-result-object p1

    sget-object v0, Lw2/r;->b:Lw2/r;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$d;->b:Lcom/miui/antivirus/ui/MainHandleBar$d;

    :goto_0
    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$c;->a:Lcom/miui/antivirus/ui/MainHandleBar$c;

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->p(Lcom/miui/antivirus/ui/MainHandleBar$d;Lcom/miui/antivirus/ui/MainHandleBar$c;)V

    goto :goto_3

    :cond_3
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_4

    const-string p1, "AntiVirusMainActivity"

    const-string v0, "Global version do not need update network state, because we did not scan this"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-static {}, Lo2/h;->y()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/l;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {p1}, Lo2/g;->f0()Lw2/r;

    move-result-object p1

    sget-object v0, Lw2/r;->b:Lw2/r;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$d;->a:Lcom/miui/antivirus/ui/MainHandleBar$d;

    goto :goto_0

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v0, Lcom/miui/antivirus/ui/MainHandleBar$d;->a:Lcom/miui/antivirus/ui/MainHandleBar$d;

    sget-object v1, Lcom/miui/antivirus/ui/MainHandleBar$c;->c:Lcom/miui/antivirus/ui/MainHandleBar$c;

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method static synthetic w0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->p1()V

    return-void
.end method

.method private w1(Lcom/miui/antivirus/model/a$a;)V
    .locals 3

    new-instance v0, Lcom/miui/antivirus/model/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v1, v2}, Lcom/miui/antivirus/model/f;-><init>(Lcom/miui/antivirus/model/a$a;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->y:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic x0(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->A1()V

    return-void
.end method

.method private x1()V
    .locals 2

    const-string v0, "AntiVirusMainActivity"

    const-string v1, "ERROR : GuardProvider Service disconnected !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$r0;->a:Lcom/miui/antivirus/activity/MainActivity$r0;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->v:Lcom/miui/antivirus/activity/MainActivity$r0;

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->U1()V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->q1()V

    return-void
.end method

.method static synthetic y0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->t1(Lcom/miui/antivirus/model/d;)V

    return-void
.end method

.method static synthetic z0(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/model/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->u1(Lcom/miui/antivirus/model/a;)V

    return-void
.end method

.method private z1()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->e:Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->n()V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v1, Lw2/r;->b:Lw2/r;

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->o(Lw2/r;)V

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$n0;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$n0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/miui/antivirus/result/d0;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->v:Lcom/miui/antivirus/activity/MainActivity$r0;

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$r0;->b:Lcom/miui/antivirus/activity/MainActivity$r0;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/miui/antivirus/activity/MainActivity$r0;->a:Lcom/miui/antivirus/activity/MainActivity$r0;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity;->L1(Lcom/miui/antivirus/result/d0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public E1(Lcom/miui/antivirus/result/a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->getResultControl()Lcom/miui/antivirus/result/c0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/result/c0;->l(Lcom/miui/antivirus/result/a;)V

    return-void
.end method

.method public F1(Lcom/miui/antivirus/result/c;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/antivirus/result/c;",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/result/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->getResultControl()Lcom/miui/antivirus/result/c0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/antivirus/result/c0;->m(Lcom/miui/antivirus/result/c;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public O1(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lx4/u;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->T1()V

    return-void

    :cond_0
    new-instance v0, Lw2/i;

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$f;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/activity/MainActivity$f;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v0, v1}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lw2/i;

    new-instance v2, Lcom/miui/antivirus/activity/MainActivity$g;

    invoke-direct {v2, p0}, Lcom/miui/antivirus/activity/MainActivity$g;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v1, v2}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/miui/antivirus/activity/MainActivity$h;

    invoke-direct {v2, p0}, Lcom/miui/antivirus/activity/MainActivity$h;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121bad

    invoke-virtual {v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f121bae

    invoke-static {p1, v4}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f12012a

    invoke-virtual {p1, v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v0, p1}, Lw2/i;->c(Landroid/app/Dialog;)V

    invoke-virtual {v1, p1}, Lw2/i;->c(Landroid/app/Dialog;)V

    return-void
.end method

.method public Q1(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/antivirus/result/b;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->getResultControl()Lcom/miui/antivirus/result/c0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/antivirus/result/c0;->p(Lcom/miui/securitycenter/ad/view/AdImageView;ILcom/miui/antivirus/result/b;)V

    return-void
.end method

.method public R1()V
    .locals 1

    invoke-static {}, Lcom/miui/antivirus/result/c0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->a:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->b:Z

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v0}, Lcom/miui/antivirus/ui/MainActivityView;->l()V

    :cond_1
    return-void
.end method

.method public W1(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lx4/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lw2/i;

    new-instance v1, Lcom/miui/antivirus/activity/MainActivity$i;

    invoke-direct {v1, p0, p1}, Lcom/miui/antivirus/activity/MainActivity$i;-><init>(Lcom/miui/antivirus/activity/MainActivity;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lw2/i;

    new-instance v2, Lcom/miui/antivirus/activity/MainActivity$j;

    invoke-direct {v2, p0}, Lcom/miui/antivirus/activity/MainActivity$j;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-direct {v1, v2}, Lw2/i;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v2, Lcom/miui/antivirus/activity/MainActivity$l;

    invoke-direct {v2, p0}, Lcom/miui/antivirus/activity/MainActivity$l;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121bad

    invoke-virtual {v3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-static {}, Lef/x;->z()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f12010c

    goto :goto_0

    :cond_2
    const v3, 0x7f12010b

    :goto_0
    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f12012c

    invoke-virtual {p1, v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v3, 0x1040000

    invoke-virtual {p1, v3, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {v1, p1}, Lw2/i;->c(Landroid/app/Dialog;)V

    invoke-virtual {v0, p1}, Lw2/i;->c(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->D:Lo2/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo2/f;->g(J)V

    const-string p1, "pop_up"

    invoke-static {p1}, Lq2/b$a;->s(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->m1()V

    :goto_3
    return-void
.end method

.method public isUninstalledDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onActivityCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->initViewTreeOwners()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/z0;->a(Landroid/view/View;Landroidx/lifecycle/v;)V

    const v0, 0x7f0e0504

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->M:Landroid/content/res/Configuration;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/antivirus/result/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lx4/t;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->i:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120086

    goto :goto_0

    :cond_0
    const v0, 0x7f120085

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lo2/f;->a(Landroid/content/Context;)Lo2/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->D:Lo2/f;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->r:Lp9/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp9/a;->g(Lp9/a$b;)V

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$h0;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$h0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->o:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$a0;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$a0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->s:Lp9/a$c;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->r:Lp9/a;

    invoke-virtual {v2, v0}, Lp9/a;->k(Lp9/a$c;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/antivirus/whitelist/d;->d(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->C:Lcom/miui/antivirus/whitelist/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->u:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$g0;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$g0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->x:Lcom/miui/antivirus/activity/MainActivity$g0;

    const v0, 0x7f0b0741

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/ui/MainActivityView;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->setEventHandler(Lw4/e;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    const v2, 0x7f120c26

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->setScanResult(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    const v2, 0x7f12064c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->setContentSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lsd/g;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "com.miui.securitycenter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "key_auto_to_result_page"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->O:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "key_risk_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->P:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/miui/antivirus/activity/MainActivity;->O:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$k;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$k;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    iget-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->O:Z

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->setAutoToResult(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    iget-boolean v2, p0, Lcom/miui/antivirus/activity/MainActivity;->O:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/antivirus/ui/MainActivityView;->setInflateVideoAnim(Z)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->X1()V

    new-instance v0, Landroidx/lifecycle/u0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v2, Lx9/a;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    check-cast v0, Lx9/a;

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->K:Lx9/a;

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    const/16 v2, 0x426

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$e0;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    invoke-direct {v0, p0, v2}, Lcom/miui/antivirus/activity/MainActivity$e0;-><init>(Lcom/miui/antivirus/activity/MainActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->L:Lcom/miui/antivirus/activity/MainActivity$e0;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.miui.securitycenter.remoteprovider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "key_safepay_auto_scan_state"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antivirus/activity/MainActivity;->L:Lcom/miui/antivirus/activity/MainActivity$e0;

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->k1()V

    invoke-static {p0}, Lgh/b;->q(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/antivirus/activity/MainActivity$f0;

    invoke-direct {p1, p0, v1}, Lcom/miui/antivirus/activity/MainActivity$f0;-><init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$k;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onActivityDestroy()V

    new-instance v0, Lcom/miui/antivirus/activity/MainActivity$l0;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/activity/MainActivity$l0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/antivirus/result/c0;->o(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/miui/antivirus/result/c0;->e(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainActivityView;->getResultControl()Lcom/miui/antivirus/result/c0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-virtual {v1}, Lcom/miui/antivirus/ui/MainActivityView;->getResultControl()Lcom/miui/antivirus/result/c0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/antivirus/result/c0;->h()V

    :cond_0
    invoke-static {}, Leg/t;->d()V

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->F:Lu2/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lu2/a;->k()V

    :cond_1
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->H:Lcom/miui/antivirus/activity/MainActivity$b0;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->I:Lcom/miui/antivirus/activity/MainActivity$m0;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_3
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->J:Lcom/miui/antivirus/activity/MainActivity$w;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_4
    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x64

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "model"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/model/d;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/miui/antivirus/model/a;->f(I)V

    const-string p3, "type"

    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    const/16 p3, 0x3f4

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity;->B:Lcom/miui/antivirus/activity/MainActivity$c0;

    const/16 p3, 0x41c

    :goto_0
    invoke-virtual {p1, p3, p2}, Lw4/e;->a(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->n1()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0, p0, p1}, Lcom/miui/common/base/e;->c(Lcom/miui/common/base/BaseActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mManagerInterceptHelper:Lcom/miui/common/base/e;

    invoke-virtual {v0}, Lcom/miui/common/base/e;->d()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public y1(Lcom/miui/antivirus/model/a;)V
    .locals 5

    sget-object v0, Lcom/miui/antivirus/activity/MainActivity$n;->a:[I

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->a()Lcom/miui/antivirus/model/a$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f121c86

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$d;->e:Lcom/miui/antivirus/ui/MainHandleBar$d;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$d;->d:Lcom/miui/antivirus/ui/MainHandleBar$d;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$d;->c:Lcom/miui/antivirus/ui/MainHandleBar$d;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$d;->b:Lcom/miui/antivirus/ui/MainHandleBar$d;

    :goto_0
    sget-object v4, Lcom/miui/antivirus/ui/MainHandleBar$c;->b:Lcom/miui/antivirus/ui/MainHandleBar$c;

    invoke-virtual {v0, v3, v4}, Lcom/miui/antivirus/ui/MainActivityView;->p(Lcom/miui/antivirus/ui/MainHandleBar$d;Lcom/miui/antivirus/ui/MainHandleBar$c;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    sget-object v3, Lcom/miui/antivirus/ui/MainHandleBar$d;->a:Lcom/miui/antivirus/ui/MainHandleBar$d;

    goto :goto_0

    :cond_5
    :goto_1
    iget v0, p0, Lcom/miui/antivirus/activity/MainActivity;->A:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/antivirus/activity/MainActivity;->A:I

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, v1}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/miui/antivirus/activity/MainActivity;->C1()V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/antivirus/activity/MainActivity;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v1}, Lo2/g;->X()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AntiVirusMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/antivirus/activity/MainActivity;->A:I

    const/16 v1, 0x64

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/miui/antivirus/activity/MainActivity;->w:Lo2/g;

    invoke-virtual {v3}, Lo2/g;->X()I

    move-result v3

    div-int/2addr v0, v3

    if-le v0, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "%d"

    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antivirus/ui/MainActivityView;->setContentProgressText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity;->q:Lcom/miui/antivirus/ui/MainActivityView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120c27

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/antivirus/ui/MainActivityView;->setContentSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
