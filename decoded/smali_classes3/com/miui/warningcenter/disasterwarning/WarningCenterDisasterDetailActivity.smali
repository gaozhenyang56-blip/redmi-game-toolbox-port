.class public final Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;,
        Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$WhenMappings;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWarningCenterDisasterDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WarningCenterDisasterDetailActivity.kt\ncom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,237:1\n1#2:238\n157#3,8:239\n*S KotlinDebug\n*F\n+ 1 WarningCenterDisasterDetailActivity.kt\ncom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity\n*L\n118#1:239,8\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA_DISASTER_INFO:Ljava/lang/String; = "disaster_info"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisasterDetailActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final binding$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->Companion:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    sget-object v0, Loj/j;->c:Loj/j;

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$binding$2;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$binding$2;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;)V

    invoke-static {v0, v1}, Loj/g;->b(Loj/j;Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->binding$delegate:Loj/f;

    return-void
.end method

.method public static final synthetic access$getBinding(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;)Ljf/a;
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOfficialSampleIcon(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getOfficialSampleIcon(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final bindData(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;)V
    .locals 8

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    iget-object v0, v0, Ljf/a;->d:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getTitle(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    iget-object v0, v0, Ljf/a;->n:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getReceivePosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    iget-object v0, v0, Ljf/a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    iget-object v0, v0, Ljf/a;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getEventType()Lcom/miui/warningcenter/disasterwarning/model/EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/EventType;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p0, v0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$bindData$2;-><init>(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Ltj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v1

    iget-object v1, v1, Ljf/a;->r:Landroid/widget/TextView;

    const/16 v2, 0x20

    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getEffective()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getSender()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getEffective()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    iget-object v0, v0, Ljf/a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getMsgType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "Alert"

    invoke-virtual {v4, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v1, 0x7f121c29

    :goto_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const-string v4, "Update"

    invoke-virtual {v4, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v1, 0x7f121c2a

    goto :goto_3

    :cond_5
    const-string v4, "Cancel"

    invoke-virtual {v4, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f121c28

    goto :goto_3

    :cond_6
    const-string v1, ""

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getWarningType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "accurate"

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object p1

    iget-object p1, p1, Ljf/a;->s:Landroid/widget/TextView;

    const v0, 0x7f121bd5

    goto :goto_5

    :cond_7
    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object p1

    iget-object p1, p1, Ljf/a;->s:Landroid/widget/TextView;

    const v0, 0x7f121bf7

    :goto_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic c0(IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->onCreate$lambda$4(IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d0(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->onCreate$lambda$3$lambda$2$lambda$1(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method private final decorateTheme(Lcom/miui/warningcenter/disasterwarning/model/Severity;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    invoke-virtual {v0}, Ljf/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const v1, 0x7f0810d1

    goto :goto_0

    :cond_0
    new-instance p1, Loj/k;

    invoke-direct {p1}, Loj/k;-><init>()V

    throw p1

    :cond_1
    const v1, 0x7f0810d0

    goto :goto_0

    :cond_2
    const v1, 0x7f0810d2

    goto :goto_0

    :cond_3
    const v1, 0x7f0810cf

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    iget-object v0, v0, Ljf/a;->o:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/Severity;->getAccentColor()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    iget-object v0, v0, Ljf/a;->p:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/Severity;->getAccentColor()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    iget-object v0, v0, Ljf/a;->q:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/Severity;->getAccentColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private final getBinding()Ljf/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->binding$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljf/a;

    return-object v0
.end method

.method public static final getLaunchIntent(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "getLaunchIntent"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->Companion:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;->getLaunchIntent(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final getOfficialSampleIcon(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;",
            "Ltj/d<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$getOfficialSampleIcon$2;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;Ltj/d;)V

    invoke-static {v0, v1, p2}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getTitle(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getWarningType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accurate"

    invoke-static {v0, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x29

    const/16 v2, 0x28

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getHeadline()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getEventType()Lcom/miui/warningcenter/disasterwarning/model/EventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/warningcenter/disasterwarning/model/EventType;->getNameRes()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getSeverity()Lcom/miui/warningcenter/disasterwarning/model/Severity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/warningcenter/disasterwarning/model/Severity;->getNameRes()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getSeverity()Lcom/miui/warningcenter/disasterwarning/model/Severity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/Severity;->getLevelRes()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static final onCreate$lambda$3$lambda$2$lambda$1(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterInfoActivity;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onCreate$lambda$4(IILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    const-string v0, "v"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->g()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/core/view/WindowInsetsCompat;->f(I)Landroidx/core/graphics/e;

    move-result-object p3

    const-string v0, "insets.getInsets(WindowI\u2026Compat.Type.systemBars())"

    invoke-static {p3, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p3, p3, Landroidx/core/graphics/e;->b:I

    add-int/2addr p0, p3

    invoke-static {}, Lx4/y;->g()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lc3/f;->r(Landroid/content/Context;)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    add-int/2addr p0, p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p2, p3, p0, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->b:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private final requireArguments()Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "disaster_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required arguments is null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final show(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "show"
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->Companion:Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity$Companion;->show(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0803ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    new-instance v2, Lcom/miui/warningcenter/disasterwarning/e;

    invoke-direct {v2, p0, v1}, Lcom/miui/warningcenter/disasterwarning/e;-><init>(Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object p1

    iget-object p1, p1, Ljf/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc3/f;->r(Landroid/content/Context;)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v1

    iget-object v1, v1, Ljf/a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->requireArguments()Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v1

    invoke-virtual {v1}, Ljf/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/e3;->b(Landroid/view/Window;Z)V

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v0

    invoke-virtual {v0}, Ljf/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v1

    invoke-virtual {v1}, Ljf/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->getBinding()Ljf/a;

    move-result-object v2

    invoke-virtual {v2}, Ljf/a;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    new-instance v3, Lcom/miui/warningcenter/disasterwarning/f;

    invoke-direct {v3, v0, v1}, Lcom/miui/warningcenter/disasterwarning/f;-><init>(II)V

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->F0(Landroid/view/View;Landroidx/core/view/l0;)V

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->bindData(Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;)V

    invoke-virtual {p1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->getSeverity()Lcom/miui/warningcenter/disasterwarning/model/Severity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/WarningCenterDisasterDetailActivity;->decorateTheme(Lcom/miui/warningcenter/disasterwarning/model/Severity;)V

    return-void
.end method
