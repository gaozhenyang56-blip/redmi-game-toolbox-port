.class public Lcom/miui/applicationlock/AppLockManageFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/AppLockManageFragment$w;,
        Lcom/miui/applicationlock/AppLockManageFragment$v;,
        Lcom/miui/applicationlock/AppLockManageFragment$u;
    }
.end annotation


# static fields
.field public static final J:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/text/TextWatcher;

.field private final D:Lc3/l;

.field private E:Landroid/content/DialogInterface$OnClickListener;

.field private F:Landroid/content/DialogInterface$OnClickListener;

.field private G:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lmiuix/view/l$b;

.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Lcom/miui/applicationlock/a;

.field private e:Lmiui/security/SecurityManager;

.field protected f:Lmiuix/view/l;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc3/o;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lc3/n;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lmiuix/appcompat/app/AlertDialog;

.field private m:Lmiuix/appcompat/app/AlertDialog;

.field private n:Lmiuix/appcompat/app/AlertDialog;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Lc3/d;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Lc3/m;

.field private v:Landroid/app/Activity;

.field private w:Z

.field private x:Lcom/miui/applicationlock/AppLockManageFragment$w;

.field private y:Z

.field private z:Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/miui/applicationlock/AppLockManageFragment;->J:Landroid/util/ArraySet;

    const-string v1, "com.android.soundrecorder"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v2, "com.android.browser"

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v3, "com.mi.globalbrowser"

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.stk"

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v4, "com.android.mms"

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.android.thememanager"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.android.gallery3d"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.android.updater"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v5, "com.android.fileexplorer"

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v6, "com.mi.android.globalFileexplorer"

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.android.calendar"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.xiaomi.calendar"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.android.vending"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.android.apps.tag"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.android.email"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v8, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v8, "com.google.android.talk"

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v8, "com.google.android.gm"

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v8, "com.miui.camera"

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v8, "com.miui.gallery"

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v9, "com.miui.player"

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v9, "com.miui.backup"

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v9, "com.miui.notes"

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "com.xiaomi.market"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "com.miui.antispam"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "com.miui.video"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "com.miui.screenrecorder"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "net.cactii.flash2"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "com.xiaomi.gamecenter.pad"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "com.google.android.music"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v10, "com.google.android.youtube"

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v11, "com.google.android.apps.youtube.music"

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v11, "com.google.android.apps.plus"

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v11, "com.facebook.orca"

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v12, "com.android.chrome"

    invoke-virtual {v0, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v13, "com.xiaomi.vipaccount"

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v13, "com.xiaomi.payment"

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v13, "com.mipay.wallet"

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.xiaomi.jr"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.miui.cloudservice"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.xiaomi.scanner"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.android.settings"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.google.android.apps.docs"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.google.android.apps.photos"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.google.android.apps.maps"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.google.android.videos"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.xiaomi.midrop"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.miui.videoplayer"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.miui.voiceassist"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.miui.hybrid"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v14, "com.google.android.contacts"

    invoke-virtual {v0, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v15, "com.google.android.dialer"

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v15, "com.google.android.apps.messaging"

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v7

    const-string v7, "com.xiaomi.mipicks"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.google.android.apps.tachyon"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.mipay.wallet.in"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.google.android.apps.nbu.paisa.user"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.xiaomi.aiasst.service"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v7, "com.htc.album"

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/applicationlock/AppLockManageFragment;->K:Ljava/util/ArrayList;

    const-string v7, "com.tencent.mm"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "com.tencent.mobileqq"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "com.immomo.momo"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "jp.naver.line.android"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "com.whatsapp"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "com.viber.voip"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "com.facebook.katana"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "com.instagram.android"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->k:I

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$k;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$k;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$n;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$n;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->C:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/applicationlock/AppLockManageFragment$v;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;Lcom/miui/applicationlock/AppLockManageFragment$k;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->D:Lc3/l;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$r;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$r;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->E:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$s;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$s;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->F:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$i;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$i;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->G:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$j;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$j;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->H:Ljava/util/Comparator;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$l;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$l;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->I:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic A0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/l;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->D:Lc3/l;

    return-object p0
.end method

.method static synthetic B0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->d1()V

    return-void
.end method

.method static synthetic C0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->g1()V

    return-void
.end method

.method static synthetic D0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic E0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic G0(Lcom/miui/applicationlock/AppLockManageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->h:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic H0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic I0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->H:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic J0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->G:Ljava/util/Comparator;

    return-object p0
.end method

.method static synthetic K0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/o;
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->X0()Lc3/o;

    move-result-object p0

    return-object p0
.end method

.method static synthetic L0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic M0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->C:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic N0(Lcom/miui/applicationlock/AppLockManageFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/AppLockManageFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic O0(Lcom/miui/applicationlock/AppLockManageFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->s:I

    return p0
.end method

.method static synthetic P0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/d;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    return-object p0
.end method

.method static synthetic Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic R0(Lcom/miui/applicationlock/AppLockManageFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->k:I

    return p1
.end method

.method static synthetic S0(Lcom/miui/applicationlock/AppLockManageFragment;)I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->k:I

    return v0
.end method

.method private T0()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->A:Z

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    invoke-virtual {v0}, Lc3/n;->d()V

    :cond_0
    return-void
.end method

.method private U0()V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->m:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0234

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->p:Landroid/widget/TextView;

    const v2, 0x7f120853

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->m:Lmiuix/appcompat/app/AlertDialog;

    const v2, 0x7f120281

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/e;->setTitle(I)V

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->m:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->m:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->F:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->m:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->m:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/miui/applicationlock/AppLockManageFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/AppLockManageFragment$a;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private V0()V
    .locals 4

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120863

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e00fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->E:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v1, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/miui/applicationlock/AppLockManageFragment$t;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/AppLockManageFragment$t;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private W0()V
    .locals 5

    new-instance v0, Lcom/miui/applicationlock/widget/f;

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    const v3, 0x7f1301b0

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/applicationlock/widget/f;-><init>(Landroid/content/Context;ILc3/n;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    const v1, 0x7f01003d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0094

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0279

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->o:Landroid/widget/TextView;

    const v2, 0x7f0b05df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0803b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog;->setEnableImmersive(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    new-instance v2, Lcom/miui/applicationlock/AppLockManageFragment$c;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/AppLockManageFragment$c;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v0, 0x7f0b01ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/miui/applicationlock/AppLockManageFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/AppLockManageFragment$d;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private X0()Lc3/o;
    .locals 5

    new-instance v0, Lc3/o;

    invoke-direct {v0}, Lc3/o;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    invoke-virtual {v2}, Lc3/n;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {v2}, Lc3/d;->s()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lc3/v;

    invoke-direct {v2}, Lc3/v;-><init>()V

    sget-object v3, Lc3/v$a;->a:Lc3/v$a;

    invoke-virtual {v2, v3}, Lc3/v;->h(Lc3/v$a;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1202a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc3/v;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1202a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc3/v;->f(Ljava/lang/String;)V

    const v3, 0x7f0803a2

    invoke-virtual {v2, v3}, Lc3/v;->e(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->u:Lc3/m;

    invoke-virtual {v2}, Lc3/m;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->u:Lc3/m;

    invoke-virtual {v2}, Lc3/m;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {v2}, Lc3/d;->r()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-static {v2}, Lx4/m1;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lc3/v;

    invoke-direct {v2}, Lc3/v;-><init>()V

    sget-object v3, Lc3/v$a;->b:Lc3/v$a;

    invoke-virtual {v2, v3}, Lc3/v;->h(Lc3/v$a;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1202a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc3/v;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1202a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc3/v;->f(Ljava/lang/String;)V

    const v3, 0x7f0803a1

    invoke-virtual {v2, v3}, Lc3/v;->e(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->e:Lmiui/security/SecurityManager;

    invoke-static {v2}, Lc3/f;->z(Lmiui/security/SecurityManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lc3/v;

    invoke-direct {v2}, Lc3/v;-><init>()V

    sget-object v3, Lc3/v$a;->c:Lc3/v$a;

    invoke-virtual {v2, v3}, Lc3/v;->h(Lc3/v$a;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1202aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc3/v;->g(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1202a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc3/v;->f(Ljava/lang/String;)V

    const v3, 0x7f0803a3

    invoke-virtual {v2, v3}, Lc3/v;->e(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0, v1}, Lc3/o;->h(Ljava/util/List;)V

    sget-object v1, Lc3/p;->d:Lc3/p;

    invoke-virtual {v0, v1}, Lc3/o;->g(Lc3/p;)V

    return-object v0
.end method

.method private Y0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0234

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120281

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120498

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/applicationlock/AppLockManageFragment$h;

    invoke-direct {v3, p0}, Lcom/miui/applicationlock/AppLockManageFragment$h;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12084c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/applicationlock/AppLockManageFragment$g;

    invoke-direct {v3, p0}, Lcom/miui/applicationlock/AppLockManageFragment$g;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private Z0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120866

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120861

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120498

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/AppLockManageFragment$f;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/AppLockManageFragment$f;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b67

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/applicationlock/AppLockManageFragment$e;

    invoke-direct {v2, p0}, Lcom/miui/applicationlock/AppLockManageFragment$e;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->n:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private a1()V
    .locals 3

    invoke-static {}, Lc3/f;->L()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$p;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$p;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->c:Landroid/view/View;

    return-object p0
.end method

.method private b1()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    const-class v2, Lcom/miui/applicationlock/MaskNotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "applock_setting_mask_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "enter_way"

    const-string v2, "mask_notification_security_center"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x23

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->I:Lmiuix/view/l$b;

    return-object p0
.end method

.method private c1()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "external_app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->r:Ljava/lang/String;

    invoke-static {v0}, Lc3/f;->x(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->r:Ljava/lang/String;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lc3/f;->k0(Ljava/lang/String;I)V

    new-instance v0, Lcom/miui/applicationlock/a;

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/applicationlock/a;-><init>(Landroid/content/Context;ZLandroid/os/Handler;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/applicationlock/a;

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    const/4 v2, 0x0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/applicationlock/a;-><init>(Landroid/content/Context;ZLandroid/os/Handler;)V

    :goto_0
    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->d:Lcom/miui/applicationlock/a;

    return-void
.end method

.method static synthetic d0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private d1()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->k:I

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, La3/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->T0()V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-static {v0, v2}, Lc3/f;->j0(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->T0()V

    return-void
.end method

.method private e1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->u:Lc3/m;

    invoke-virtual {v0}, Lc3/m;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->Y0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->U0()V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->u:Lc3/m;

    new-instance v1, Lcom/miui/applicationlock/AppLockManageFragment$q;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/AppLockManageFragment$q;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v0, v1}, Lc3/m;->B(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->i1()V

    return-void
.end method

.method private f1()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    invoke-virtual {v0}, Lc3/n;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->s()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    invoke-virtual {v0}, Lc3/n;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx4/a0;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->W0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->V0()V

    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    new-instance v1, Lcom/miui/applicationlock/AppLockManageFragment$u;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/applicationlock/AppLockManageFragment$u;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;Lcom/miui/applicationlock/AppLockManageFragment$k;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc3/n;->c(Lc3/h;I)V

    iput-boolean v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->A:Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->Z0()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic g0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method private g1()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->u:Lc3/m;

    new-instance v1, Lcom/miui/applicationlock/AppLockManageFragment$b;

    invoke-direct {v1, p0}, Lcom/miui/applicationlock/AppLockManageFragment$b;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {v0, v1}, Lc3/m;->B(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method private h1(Lc3/b;)V
    .locals 6

    invoke-virtual {p1}, Lc3/b;->f()Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/o;

    invoke-virtual {v3}, Lc3/o;->a()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc3/o;

    invoke-virtual {v4}, Lc3/o;->c()Lc3/p;

    move-result-object v4

    sget-object v5, Lc3/p;->a:Lc3/p;

    if-ne v4, v5, :cond_3

    if-eqz v0, :cond_2

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc3/o;

    invoke-virtual {v4}, Lc3/o;->c()Lc3/p;

    move-result-object v4

    sget-object v5, Lc3/p;->b:Lc3/p;

    if-ne v4, v5, :cond_5

    if-eqz v0, :cond_4

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v3, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method static synthetic i0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->m:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private i1()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/o;

    invoke-virtual {v2}, Lc3/o;->c()Lc3/p;

    move-result-object v2

    sget-object v3, Lc3/p;->d:Lc3/p;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->X0()Lc3/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->d:Lcom/miui/applicationlock/a;

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/miui/applicationlock/a;->w(Ljava/util/List;Z)V

    return-void
.end method

.method private isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->f:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic j0(Lcom/miui/applicationlock/AppLockManageFragment;)Lcom/miui/applicationlock/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->d:Lcom/miui/applicationlock/a;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/applicationlock/AppLockManageFragment;Lc3/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/AppLockManageFragment;->h1(Lc3/b;)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/applicationlock/AppLockManageFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->isSearchMode()Z

    move-result p0

    return p0
.end method

.method static synthetic m0(Lcom/miui/applicationlock/AppLockManageFragment;)Lmiui/security/SecurityManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->e:Lmiui/security/SecurityManager;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/applicationlock/AppLockManageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic p0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->e1()V

    return-void
.end method

.method static synthetic q0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->f1()V

    return-void
.end method

.method static synthetic r0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->b1()V

    return-void
.end method

.method static synthetic s0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/n;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    return-object p0
.end method

.method static synthetic t0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->W0()V

    return-void
.end method

.method static synthetic u0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->V0()V

    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Lc3/o;

    invoke-direct {v2}, Lc3/o;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lc3/o;->e(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v5

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v6, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc3/o;

    invoke-virtual {v6}, Lc3/o;->c()Lc3/p;

    move-result-object v6

    sget-object v7, Lc3/p;->d:Lc3/p;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc3/o;

    invoke-virtual {v6}, Lc3/o;->c()Lc3/p;

    move-result-object v6

    sget-object v7, Lc3/p;->c:Lc3/p;

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc3/o;

    invoke-virtual {v6}, Lc3/o;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc3/b;

    invoke-virtual {v7}, Lc3/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10002f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-virtual {p1, v1, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lc3/o;->f(Ljava/lang/String;)V

    sget-object p1, Lc3/p;->e:Lc3/p;

    invoke-virtual {v2, p1}, Lc3/o;->g(Lc3/p;)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->d:Lcom/miui/applicationlock/a;

    invoke-virtual {p1, v0, v6}, Lcom/miui/applicationlock/a;->w(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic v0(Lcom/miui/applicationlock/AppLockManageFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->A:Z

    return p1
.end method

.method static synthetic w0(Lcom/miui/applicationlock/AppLockManageFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x0(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->Z0()V

    return-void
.end method

.method static synthetic y0(Lcom/miui/applicationlock/AppLockManageFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic z0(Lcom/miui/applicationlock/AppLockManageFragment;)Lc3/m;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->u:Lc3/m;

    return-object p0
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->f:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->f:Lmiuix/view/l;

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/v;->j(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->s:I

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {v0, v1}, Lc3/d;->C(Z)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$w;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/miui/applicationlock/AppLockManageFragment$w;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;Lcom/miui/applicationlock/AppLockManageFragment$k;)V

    iput-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->x:Lcom/miui/applicationlock/AppLockManageFragment$w;

    const/16 v0, 0x70

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/applicationlock/AppLockManageFragment;->x:Lcom/miui/applicationlock/AppLockManageFragment$w;

    invoke-virtual {p1, v0, v2, v3}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/applicationlock/AppLockManageFragment;->x:Lcom/miui/applicationlock/AppLockManageFragment$w;

    invoke-virtual {p1, v0, v2, v3}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :goto_0
    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->c1()V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->d:Lcom/miui/applicationlock/a;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lz2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lz2/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->d:Lcom/miui/applicationlock/a;

    new-instance v0, Lcom/miui/applicationlock/AppLockManageFragment$o;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/AppLockManageFragment$o;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;)V

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/a;->v(Lcom/miui/applicationlock/a$f;)V

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lc3/n;->g(Landroid/content/Context;)Lc3/n;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/m;->o(Landroid/content/Context;)Lc3/m;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->u:Lc3/m;

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->o()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->w:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/applicationlock/TransitionHelper;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    invoke-virtual {p1}, Lc3/n;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    invoke-virtual {p1}, Lc3/n;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc3/d;->B(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {p1, v1}, Lc3/d;->B(Z)V

    :goto_1
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->X0()Lc3/o;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->d:Lcom/miui/applicationlock/a;

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/miui/applicationlock/a;->w(Ljava/util/List;Z)V

    :cond_3
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->z:Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    if-eqz p1, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d0()Ld3/b;

    move-result-object p1

    invoke-virtual {p1}, Ld3/b;->b()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->z:Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    invoke-virtual {p1}, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->d0()Ld3/b;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ld3/b;->e(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->a1()V

    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1e

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, p3, :cond_4

    const/16 p3, 0x22

    if-eq p1, p3, :cond_2

    const/16 p3, 0x23

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->u:Lc3/m;

    invoke-virtual {p1}, Lc3/m;->t()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {p1, v1}, Lc3/d;->A(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    invoke-virtual {p1, v1}, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->e0(Z)V

    goto :goto_1

    :cond_4
    if-ne p2, v0, :cond_5

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    iget p2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->s:I

    invoke-static {p1, p2}, Lc3/f;->B0(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {p1, v1}, Lc3/d;->B(Z)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lc3/d;->B(Z)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->v:Landroid/app/Activity;

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/security/SecurityManager;

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->e:Lmiui/security/SecurityManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130442

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->j:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->z:Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->T0()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->a(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc3/b;

    invoke-virtual {v3}, Lc3/b;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    const-string v0, "locked_app_quantity1"

    invoke-static {v0, v1, v2}, Lr4/a;->q(Ljava/lang/String;J)V

    :cond_2
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0e0263

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b06d6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b0a23

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->c:Landroid/view/View;

    const p3, 0x1020009

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->b:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->c:Landroid/view/View;

    iget-object p3, p0, Lcom/miui/applicationlock/AppLockManageFragment;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->T0()V

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->n:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->n:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->l:Lmiuix/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->i:Lc3/n;

    new-instance v2, Lcom/miui/applicationlock/AppLockManageFragment$u;

    invoke-direct {v2, p0, v1}, Lcom/miui/applicationlock/AppLockManageFragment$u;-><init>(Lcom/miui/applicationlock/AppLockManageFragment;Lcom/miui/applicationlock/AppLockManageFragment$k;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lc3/n;->c(Lc3/h;I)V

    iput-boolean v3, p0, Lcom/miui/applicationlock/AppLockManageFragment;->A:Z

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->w:Z

    iget-object v2, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {v2}, Lc3/d;->o()Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->z:Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/miui/applicationlock/PrivacyAndAppLockManageActivity;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->q:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->w:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v2, 0x70

    iget-object v3, p0, Lcom/miui/applicationlock/AppLockManageFragment;->x:Lcom/miui/applicationlock/AppLockManageFragment$w;

    invoke-virtual {v0, v2, v1, v3}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    const-string v0, "AppLockManageFragment"

    const-string v1, "loader restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->y:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->y:Z

    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->i1()V

    :cond_3
    invoke-direct {p0}, Lcom/miui/applicationlock/AppLockManageFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->t:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/AppLockManageFragment;->updateSearchResult(Ljava/lang/String;)V

    :cond_4
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_show_dialog"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/AppLockManageFragment;->y:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment;->f:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method
