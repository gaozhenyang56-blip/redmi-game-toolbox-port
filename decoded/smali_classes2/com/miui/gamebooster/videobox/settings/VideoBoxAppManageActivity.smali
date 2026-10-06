.class public Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;
.super Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/ui/c$a;
.implements Li4/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;
    }
.end annotation


# static fields
.field public static final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lmiuix/recyclerview/widget/RecyclerView;

.field private d:Lcom/miui/gamebooster/ui/c;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/r;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/recyclerview/widget/RecyclerView$m;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/w;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field protected l:Lmiuix/view/l;

.field private m:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;

.field private n:Lcom/miui/gamebooster/service/IVideoToolBox;

.field private o:Landroid/content/ServiceConnection;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/text/TextWatcher;

.field private r:Lmiuix/view/l$b;

.field s:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->t:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->u:Ljava/util/List;

    const-string v2, "com.miui.securitycenter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.android.settings"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.xiaomi.scanner"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.android.deskclock"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.miui.weather2"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.miui.compass"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.duokan.phone.remotecontroller"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "com.miui.screenrecorder"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.lbe.security.miui"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.milink.service"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.miui.securitymanager"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.xiaomi.gamecenter"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.systemui"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$a;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->o:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$f;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$f;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$g;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->q:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r:Lmiuix/view/l$b;

    new-instance v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$i;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$i;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->s:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method private A0(Ljava/util/List;Lcom/miui/gamebooster/model/r;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh8/r;",
            ">;",
            "Lcom/miui/gamebooster/model/r;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private B0(Lh8/r;)V
    .locals 9

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Lh8/r;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1209f9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lh8/r;->f()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lh8/r;->h(Z)V

    invoke-virtual {p1}, Lh8/r;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$o;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->J0()V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/model/w;

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh8/r;

    invoke-virtual {v6}, Lh8/r;->f()Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lh8/r;->f()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->I0(ZLh8/r;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/w;->b()Lcom/miui/gamebooster/model/r;

    move-result-object v5

    sget-object v6, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    if-ne v5, v6, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10000a

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10007b

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    invoke-virtual {v0, v5}, Lcom/miui/gamebooster/model/w;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->isSearchMode()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->H0(Ljava/util/List;)V

    :cond_9
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->x0(Ljava/util/List;)V

    :cond_a
    :goto_4
    return-void
.end method

.method private C0()Z
    .locals 1

    invoke-static {}, La8/z;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static D0(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->m0(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->z0(Landroid/content/pm/PackageManager;ILjava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Le3/c;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->E0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "com.miui.mediaviewer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static E0(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    sget-object v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->t:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private F0()V
    .locals 5

    const-string v0, "VideoBoxAppManage"

    const-string v1, "refreshListForAppChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0

    invoke-virtual {v0}, Li4/a;->j()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/r;

    invoke-virtual {v3}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Li8/c;->B(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Li8/c;->A(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    new-instance v0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$d;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private G0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->o:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private I0(ZLh8/r;)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/gamebooster/model/r;->b:Lcom/miui/gamebooster/model/r;

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/w;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/w;->b()Lcom/miui/gamebooster/model/r;

    move-result-object v2

    if-ne p1, v2, :cond_2

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->A0(Ljava/util/List;Lcom/miui/gamebooster/model/r;)I

    move-result v1

    invoke-interface {v2, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/r;

    invoke-virtual {p2, v3}, Lh8/r;->e(Lh8/r;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private J0()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->C0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VideoBoxAppManage"

    const-string v1, "updateVideoAppList: isAllowUpdate false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$b;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lcom/miui/gamebooster/service/IVideoToolBox;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->n:Lcom/miui/gamebooster/service/IVideoToolBox;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Lcom/miui/gamebooster/service/IVideoToolBox;)Lcom/miui/gamebooster/service/IVideoToolBox;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->n:Lcom/miui/gamebooster/service/IVideoToolBox;

    return-object p1
.end method

.method static synthetic h0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r:Lmiuix/view/l$b;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->q:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Lh8/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->B0(Lh8/r;)V

    return-void
.end method

.method static synthetic o0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->F0()V

    return-void
.end method

.method static synthetic q0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lcom/miui/gamebooster/ui/c;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->d:Lcom/miui/gamebooster/ui/c;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    return-object p1
.end method

.method public static setItemPaddingForSpecialDevice(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "flare"

    const-string v1, "spark"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07083e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic t0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic u0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Lcom/miui/gamebooster/model/w;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/w;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/w;->h(Ljava/util/List;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    iget-object v6, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gamebooster/model/w;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

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

    check-cast v7, Lh8/r;

    invoke-virtual {v7}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10002f

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/miui/gamebooster/model/w;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->H0(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->x0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic v0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->J0()V

    return-void
.end method

.method static synthetic w0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->x0(Ljava/util/List;)V

    return-void
.end method

.method private x0(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/w;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->h:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    move v4, v1

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/model/w;

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    new-instance v5, Lc3/o;

    invoke-direct {v5}, Lc3/o;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gamebooster/model/w;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/w;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc3/o;->f(Ljava/lang/String;)V

    add-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/w;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$e;

    invoke-direct {p1, p0, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$e;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/util/Map;)V

    invoke-static {p1}, Ls4/c$b;->b(Lu4/c;)Ls4/c$b;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071d6f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ls4/c$b;->c(I)Ls4/c$b;

    move-result-object p1

    invoke-virtual {p1}, Ls4/c$b;->a()Ls4/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->h:Landroidx/recyclerview/widget/RecyclerView$m;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method public static y0(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->m0(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->z0(Landroid/content/pm/PackageManager;ILjava/util/HashSet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "com.miui.mediaviewer"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    return-object p0
.end method

.method private static z0(Landroid/content/pm/PackageManager;ILjava/util/HashSet;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I",
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1}, Lcom/miui/appmanager/AppManageUtils;->o0(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public H0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/w;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->d:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/c;->o()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/w;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->d:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/w;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/ui/c;->n(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->d:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Lq6/i;I)V
    .locals 1

    const p1, 0x7f0b0a9f

    invoke-virtual {p2, p1}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/r;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lh8/r;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1209f9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f0e02a3

    invoke-static {p1, p2, p3, v0}, Lx4/t;->O(Ljava/lang/String;ILandroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->l:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->l:Lmiuix/view/l;

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;Lq6/i;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->l:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lj8/s;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "VideoBoxAppManage"

    const-string v0, "Device not support vtb!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    const v0, 0x7f0e04a5

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->k(II)V

    const v0, 0x7f0b0a23

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->j:Landroid/view/View;

    const v2, 0x1020009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->j:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/miui/gamebooster/ui/c;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->d:Lcom/miui/gamebooster/ui/c;

    new-instance v2, Lv5/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    move v3, p1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->s:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v2, v3, v4}, Lv5/b;-><init>(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/ui/c;->m(Lq6/b;)Lcom/miui/gamebooster/ui/c;

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->d:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/ui/c;->y(Lcom/miui/gamebooster/ui/c$a;)V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->d:Lcom/miui/gamebooster/ui/c;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/gamebooster/service/VideoToolBoxService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->o:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance p1, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->m:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->m:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->m:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$j;

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->G0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->J0()V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->l:Lmiuix/view/l;

    return-void
.end method

.method public x()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$c;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$c;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method
