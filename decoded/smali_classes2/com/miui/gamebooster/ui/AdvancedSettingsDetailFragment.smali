.class public Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;
.implements Ll8/e;
.implements Lcom/miui/gamebooster/widget/FourSwitchSelector$a;


# static fields
.field private static final w:[F


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/widget/CompoundButton;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Landroid/widget/SeekBar;

.field private h:Landroid/widget/SeekBar;

.field private i:Lmiuix/appcompat/app/AlertDialog;

.field private j:I

.field private k:Z

.field private l:Landroid/view/View;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/view/View;

.field private r:Ll8/f;

.field private s:Ljava/lang/String;

.field private t:Lcom/miui/gamebooster/widget/FourSwitchSelector;

.field private u:Lcom/miui/gamebooster/widget/FourSwitchSelector;

.field v:Lcom/miui/gamebooster/ui/touch/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->w:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3eaa7efa    # 0.333f
        0x3f2a7efa    # 0.666f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->a:I

    iput v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->d:Ljava/util/List;

    iput v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    return-void
.end method

.method static synthetic b0(Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->n0()V

    return-void
.end method

.method private c0()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f1209e3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1209e2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120f48

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120499

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment$a;

    invoke-direct {v5, p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment$a;-><init>(Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;)V

    new-instance v6, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment$b;

    invoke-direct {v6, p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment$b;-><init>(Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;)V

    invoke-static/range {v0 .. v6}, Leg/g;->h(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private d0()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->k0()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->c:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->k:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e0()V

    invoke-static {}, La8/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->h:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m0(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->u:Lcom/miui/gamebooster/widget/FourSwitchSelector;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f0(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->setOption(I)V

    :cond_1
    return-void
.end method

.method private e0()V
    .locals 3

    invoke-static {}, La8/g0;->W()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->v:Lcom/miui/gamebooster/ui/touch/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/touch/a;->m()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v2, La8/b;->h:I

    invoke-virtual {v1, v0, v2}, La8/b;->i(II)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->j:I

    iget v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->g:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->l0(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->t:Lcom/miui/gamebooster/widget/FourSwitchSelector;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f0(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->setOption(I)V

    :cond_3
    return-void
.end method

.method private static f0(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method private static g0(I)I
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0
.end method

.method public static h0(Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;
    .locals 3

    new-instance v0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;

    invoke-direct {v0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "label"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "pkg"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "pkg_uid"

    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private i0(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    const-string v3, "settings_edge"

    invoke-static {v0, v1, v2, v3, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->l0(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/utils/a;->p0(Ljava/lang/String;I)V

    return-void
.end method

.method private j0(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    const-string v3, "settings_hdr"

    invoke-static {v0, v1, v2, v3, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m0(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/gamebooster/utils/a;->o0(Ljava/lang/String;I)V

    return-void
.end method

.method private k0()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    iget v3, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, La8/j0;->j(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->v:Lcom/miui/gamebooster/ui/touch/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/touch/a;->i(Landroid/database/Cursor;)V

    :cond_1
    const-string v0, "settings_edge"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->a:I

    const-string v0, "settings_hdr"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->b:I

    const-string v0, "settings_4d"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v4, v2

    :cond_2
    iput-boolean v4, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->k:Z

    const-string v0, "AdvanceSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data from db : edge= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\tHDR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\t4D="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-void

    :goto_1
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private l0(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m:Landroid/widget/ImageView;

    const v0, 0x7f080676

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m:Landroid/widget/ImageView;

    const v0, 0x7f080675

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m:Landroid/widget/ImageView;

    const v0, 0x7f080674

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m:Landroid/widget/ImageView;

    const v0, 0x7f080677

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private m0(I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->n:Landroid/widget/ImageView;

    const v0, 0x7f08067a

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->n:Landroid/widget/ImageView;

    const v0, 0x7f080679

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->n:Landroid/widget/ImageView;

    const v0, 0x7f080678

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->n:Landroid/widget/ImageView;

    const v0, 0x7f08067b

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private n0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    invoke-static {v0, v1, v2}, La8/j0;->q(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->k0()V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->o0()V

    const-string v0, "reply_default"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a$n;->I(Ljava/lang/String;)V

    return-void
.end method

.method private o0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->v:Lcom/miui/gamebooster/ui/touch/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/touch/a;->m()V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->g:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->j:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->j:I

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->l0(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->h:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0, v1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m0(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->c:Landroid/widget/CompoundButton;

    iget-boolean v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->k:Z

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->t:Lcom/miui/gamebooster/widget/FourSwitchSelector;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->j:I

    invoke-static {v2}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f0(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->setOption(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->u:Lcom/miui/gamebooster/widget/FourSwitchSelector;

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->setOption(I)V

    :cond_2
    return-void
.end method

.method private p0(Landroid/widget/SeekBar;)I
    .locals 3

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    rem-int/lit8 v1, v0, 0x64

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x32

    :cond_0
    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v1, v0, 0x64

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return v0
.end method


# virtual methods
.method public G(Lcom/miui/gamebooster/widget/FourSwitchSelector;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->t:Lcom/miui/gamebooster/widget/FourSwitchSelector;

    const-string v1, "gs_event_click"

    const-string v2, "pkg_name"

    const-string v3, "pos"

    const-string v4, "speed_set_3_game"

    const-string v5, "page_name"

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->g0(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->i0(I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "second_"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->u:Lcom/miui/gamebooster/widget/FourSwitchSelector;

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->g0(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->j0(I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "third_"

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->r:Ll8/f;

    return-void
.end method

.method protected initView()V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mView:Landroid/view/View;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->l:Landroid/view/View;

    const v0, 0x7f0b0c01

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0b09fc

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->q:Landroid/view/View;

    const v0, 0x7f0b09fb

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->p:Landroid/widget/LinearLayout;

    invoke-static {}, La8/g0;->W()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const v0, 0x7f0b0c00

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v3, 0x7f0b09b4

    invoke-virtual {p0, v3}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    new-instance v4, Lcom/miui/gamebooster/ui/touch/a;

    invoke-direct {v4}, Lcom/miui/gamebooster/ui/touch/a;-><init>()V

    iput-object v4, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->v:Lcom/miui/gamebooster/ui/touch/a;

    invoke-virtual {v4, v0, v3}, Lcom/miui/gamebooster/ui/touch/a;->e(Landroid/view/ViewGroup;Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->v:Lcom/miui/gamebooster/ui/touch/a;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    iget v4, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    invoke-virtual {v0, v3, v4}, Lcom/miui/gamebooster/ui/touch/a;->q(Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, La8/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La8/r;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b09e7

    invoke-virtual {p0, v3}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CompoundButton;

    iput-object v3, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->c:Landroid/widget/CompoundButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f0b0d71

    invoke-virtual {p0, v3}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lo6/b;->g()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v1, 0x7f0b0cf3

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    const-string v3, "com.tencent.tmgp.sgamece"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    const-string v3, "com.tencent.tmgp.sgame"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1209f5

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1209f6

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const v1, 0x7f0b06fd

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0a3a

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->h:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f0b0a34

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->g:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f0b09ea

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/view/SeekBarLinearLayout;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->setOnLinearLayoutClickListener(Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;)V

    const v1, 0x7f0b09eb

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/view/SeekBarLinearLayout;

    invoke-virtual {v1, p0}, Lcom/miui/gamebooster/view/SeekBarLinearLayout;->setOnLinearLayoutClickListener(Lcom/miui/gamebooster/view/SeekBarLinearLayout$a;)V

    const v1, 0x7f0b0630

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m:Landroid/widget/ImageView;

    const v1, 0x7f060315

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const v0, 0x7f0b0631

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->n:Landroid/widget/ImageView;

    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    const v0, 0x7f0b0042

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->s:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    const v0, 0x7f0b035a

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/FourSwitchSelector;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->t:Lcom/miui/gamebooster/widget/FourSwitchSelector;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->setListener(Lcom/miui/gamebooster/widget/FourSwitchSelector$a;)V

    :cond_a
    const v0, 0x7f0b04d0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/FourSwitchSelector;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->u:Lcom/miui/gamebooster/widget/FourSwitchSelector;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/FourSwitchSelector;->setListener(Lcom/miui/gamebooster/widget/FourSwitchSelector$a;)V

    :cond_b
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->d0()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b09e7

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    iget v1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    const-string v2, "settings_4d"

    invoke-static {p1, v0, v1, v2, p2}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/utils/a;->n0(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "page_name"

    const-string v1, "speed_set_3_game"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forth_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    const-string p2, "on"

    goto :goto_0

    :cond_2
    const-string p2, "off"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "pos"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    const-string v0, "pkg_name"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "gs_event_click"

    invoke-static {p2, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0139

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b06fd

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->c0()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "page_name"

    const-string v1, "speed_set_3_game"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pos"

    const-string v1, "fifth_0"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    const-string v1, "pkg_name"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gs_event_click"

    invoke-static {v0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackGameBoxEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->r:Ll8/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ll8/f;->pop()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130429

    goto :goto_0

    :cond_0
    const p1, 0x7f13043e

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "pkg_uid"

    const-string v2, "pkg"

    const-string v3, "label"

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->s:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->s:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    iget-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->s:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->setTitle(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-static {}, Lo6/b;->b()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->d:Ljava/util/List;

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01d6

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->i:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->h:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->p0(Landroid/widget/SeekBar;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->j0(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->g:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->p0(Landroid/widget/SeekBar;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->i0(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public u(Lcom/miui/gamebooster/view/SeekBarLinearLayout;F)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->w:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget v2, v2, v1

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fc54fdf3b645a1dL    # 0.1665

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->h:Landroid/widget/SeekBar;

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    mul-int/lit8 v4, v1, 0x64

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_0
    mul-int/lit8 v3, v1, 0x64

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->h:Landroid/widget/SeekBar;

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->g:Landroid/widget/SeekBar;

    if-ne v0, v3, :cond_1

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    mul-int/lit8 v4, v1, 0x64

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_1
    mul-int/lit8 v3, v1, 0x64

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->g:Landroid/widget/SeekBar;

    :goto_3
    invoke-virtual {p0, v2}, Lcom/miui/gamebooster/ui/AdvancedSettingsDetailFragment;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b09ea
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
