.class public Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private final d:[Landroid/view/View;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Lbc/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/a$a<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d:[Landroid/view/View;

    new-instance v0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$a;-><init>(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->e:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment$b;-><init>(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->f:Lbc/a$a;

    return-void
.end method

.method static synthetic b0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->h0()Z

    move-result p0

    return p0
.end method

.method static synthetic c0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;)[Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d:[Landroid/view/View;

    return-object p0
.end method

.method public static g0()Lmiuix/appcompat/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;

    invoke-direct {v0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;-><init>()V

    return-object v0
.end method

.method private h0()Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.Settings$NotificationAccessSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, ":settings:show_fragment"

    const-string v3, "NotificationAccessSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private i0(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0b0747

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->a:Landroid/widget/TextView;

    const v0, 0x7f0b081a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0d4c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d:[Landroid/view/View;

    const v1, 0x7f0b0293

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d:[Landroid/view/View;

    const v1, 0x7f0b0296

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d:[Landroid/view/View;

    const v1, 0x7f0b029c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d:[Landroid/view/View;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d:[Landroid/view/View;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->d:[Landroid/view/View;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    const v1, 0x7f0b0217

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()V
    .locals 3

    new-instance v0, Lub/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->f:Lbc/a$a;

    invoke-direct {v0, v1, v2}, Lub/b;-><init>(Landroid/content/Context;Lbc/a$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0e0176

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->i0(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/miui/permcenter/detection/DangerousPermissionsAppFragment;->getData()V

    return-void
.end method
