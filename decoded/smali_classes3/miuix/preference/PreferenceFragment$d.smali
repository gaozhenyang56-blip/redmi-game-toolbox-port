.class Lmiuix/preference/PreferenceFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/graphics/RectF;

.field public b:I

.field public c:Z

.field public d:Z

.field public e:I

.field private f:Z

.field private g:Z

.field final synthetic h:Lmiuix/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$d;->h:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$d;->a:Landroid/graphics/RectF;

    const/4 p1, -0x1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$d;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$d;->c:Z

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$d;->d:Z

    iput p1, p0, Lmiuix/preference/PreferenceFragment$d;->e:I

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$d;->f:Z

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$d;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceFragment$d;-><init>(Lmiuix/preference/PreferenceFragment;)V

    return-void
.end method

.method static synthetic a(Lmiuix/preference/PreferenceFragment$d;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment$d;->f:Z

    return p0
.end method

.method static synthetic b(Lmiuix/preference/PreferenceFragment$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$d;->f:Z

    return p1
.end method

.method static synthetic c(Lmiuix/preference/PreferenceFragment$d;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment$d;->g:Z

    return p0
.end method

.method static synthetic d(Lmiuix/preference/PreferenceFragment$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$d;->g:Z

    return p1
.end method
