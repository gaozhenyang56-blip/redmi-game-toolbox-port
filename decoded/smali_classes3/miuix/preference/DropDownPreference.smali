.class public Lmiuix/preference/DropDownPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/DropDownPreference$f;,
        Lmiuix/preference/DropDownPreference$g;,
        Lmiuix/preference/DropDownPreference$SavedState;
    }
.end annotation


# static fields
.field private static final o:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final p:[Ljava/lang/CharSequence;


# instance fields
.field private a:Landroid/widget/ArrayAdapter;

.field private b:Landroid/widget/ArrayAdapter;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lmiuix/appcompat/widget/Spinner;

.field private f:[Ljava/lang/CharSequence;

.field private g:[Ljava/lang/CharSequence;

.field private h:[Landroid/graphics/drawable/Drawable;

.field private i:Landroidx/preference/h;

.field private j:Z

.field private k:F

.field private l:Z

.field private m:Landroid/os/Handler;

.field private final n:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v0, v1

    sput-object v0, Lmiuix/preference/DropDownPreference;->o:[Ljava/lang/Class;

    new-array v0, v2, [Ljava/lang/CharSequence;

    sput-object v0, Lmiuix/preference/DropDownPreference;->p:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/preference/k;->f:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->j:Z

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiuix/preference/DropDownPreference;->k:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->l:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmiuix/preference/DropDownPreference;->m:Landroid/os/Handler;

    new-instance v1, Lmiuix/preference/DropDownPreference$a;

    invoke-direct {v1, p0}, Lmiuix/preference/DropDownPreference$a;-><init>(Lmiuix/preference/DropDownPreference;)V

    iput-object v1, p0, Lmiuix/preference/DropDownPreference;->n:Landroid/widget/AdapterView$OnItemSelectedListener;

    sget-object v1, Lmiuix/preference/r;->c0:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lmiuix/preference/r;->d0:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lmiuix/preference/r;->e0:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, v2}, Lmiuix/preference/DropDownPreference;->u(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    goto :goto_0

    :cond_0
    new-instance v1, Lmiuix/preference/DropDownPreference$f;

    invoke-direct {v1, p1, p2, p3, p4}, Lmiuix/preference/DropDownPreference$f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    :goto_0
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->l()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Lmiuix/preference/DropDownPreference;->k()V

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->x(Z)V

    return-void
.end method

.method private F(Landroidx/preference/h;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    instance-of v0, p1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmiuix/preference/DropDownPreference;->j:Z

    if-eqz v0, :cond_1

    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private G(I)V
    .locals 4

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->i:Landroidx/preference/h;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    instance-of v1, v0, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmiuix/preference/DropDownPreference;->j:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->f:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge p1, v3, :cond_1

    aget-object v1, v2, p1

    :cond_1
    const p1, 0x1020014

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lmiuix/preference/DropDownPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->G(I)V

    return-void
.end method

.method static synthetic e(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->g:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic f(Lmiuix/preference/DropDownPreference;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->m:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lmiuix/preference/DropDownPreference;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->a:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static synthetic h(Lmiuix/preference/DropDownPreference;Landroidx/preference/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->F(Landroidx/preference/h;)V

    return-void
.end method

.method static synthetic i(Lmiuix/preference/DropDownPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->n:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic j(Lmiuix/preference/DropDownPreference;)Lmiuix/appcompat/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    return-object p0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$f;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->f:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    check-cast v0, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference$f;->a()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->g:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    check-cast v0, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {v0}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->h:[Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lmiuix/preference/DropDownPreference;->f:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->f:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->f:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->g:[Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->h:[Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void
.end method

.method private m(Lmiuix/appcompat/widget/Spinner;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setContextClickable(Z)V

    return-void
.end method

.method private o(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->g:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->g:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private u(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lmiuix/preference/DropDownPreference;->o:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ArrayAdapter;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find Adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t access non-public constructor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not instantiate the Adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error creating Adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private v(Landroidx/preference/h;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    instance-of p1, p1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/preference/DropDownPreference;->j:Z

    if-eqz p1, :cond_1

    new-instance p1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/preference/p;->a:I

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    new-instance v3, Lmiuix/preference/DropDownPreference$g;

    invoke-direct {v3, p0, v2}, Lmiuix/preference/DropDownPreference$g;-><init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->a:Landroid/widget/ArrayAdapter;

    :cond_1
    return-void
.end method


# virtual methods
.method public A([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$f;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    check-cast p1, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->h:[Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public B([Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$f;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference$f;->b([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->g:[Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method public C([Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$f;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setSummaries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lmiuix/preference/DropDownPreference;->d:Z

    if-nez v2, :cond_1

    :cond_0
    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lmiuix/preference/DropDownPreference;->d:Z

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistString(Ljava/lang/String;)Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public E(I)V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->g:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    :cond_0
    return-void
.end method

.method l()Landroid/widget/ArrayAdapter;
    .locals 4

    new-instance v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    new-instance v3, Lmiuix/preference/DropDownPreference$g;

    invoke-direct {v3, p0, v2}, Lmiuix/preference/DropDownPreference$g;-><init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V

    invoke-direct {v0, v1, v2, v3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;Landroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    return-object v0
.end method

.method public n(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->o(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected notifyChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->a:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->m:Landroid/os/Handler;

    new-instance v1, Lmiuix/preference/DropDownPreference$b;

    invoke-direct {v1, p0}, Lmiuix/preference/DropDownPreference$b;-><init>(Lmiuix/preference/DropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 5

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->j:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v0

    sget v3, Lmiuix/preference/p;->c:I

    if-eq v0, v3, :cond_2

    sget v4, Lmiuix/preference/p;->b:I

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lmiuix/preference/DropDownPreference;->j:Z

    if-eqz v0, :cond_3

    sget v3, Lmiuix/preference/p;->b:I

    :cond_3
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_4
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 3

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->i:Landroidx/preference/h;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiuix/preference/DropDownPreference;->j:Z

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget v2, Lmiuix/preference/o;->m:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/widget/Spinner;

    iput-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, p1}, Lmiuix/preference/DropDownPreference;->v(Landroidx/preference/h;)V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v0}, Lmiuix/preference/DropDownPreference;->m(Lmiuix/appcompat/widget/Spinner;)V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    iget-object v2, p0, Lmiuix/preference/DropDownPreference;->a:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->r()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiuix/preference/DropDownPreference;->o(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    new-instance v2, Lmiuix/preference/DropDownPreference$c;

    invoke-direct {v2, p0, p1}, Lmiuix/preference/DropDownPreference$c;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/h;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    new-instance v2, Lmiuix/preference/DropDownPreference$d;

    invoke-direct {v2, p0, p1}, Lmiuix/preference/DropDownPreference$d;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/h;)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/widget/Spinner;->setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V

    iget-boolean v0, p0, Lmiuix/preference/DropDownPreference;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getWindowManagerFlag()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Lmiuix/appcompat/widget/Spinner;->getWindowManagerFlag()I

    move-result v1

    and-int/lit8 v1, v1, -0x3

    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setWindowManagerFlags(I)V

    iget v0, p0, Lmiuix/preference/DropDownPreference;->k:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/widget/Spinner;->setDimAmount(F)V

    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lmiuix/preference/DropDownPreference$e;

    invoke-direct {v1, p0, p1}, Lmiuix/preference/DropDownPreference$e;-><init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lmiuix/preference/DropDownPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lmiuix/preference/DropDownPreference$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lmiuix/preference/DropDownPreference$SavedState;

    invoke-direct {v1, v0}, Lmiuix/preference/DropDownPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lmiuix/preference/DropDownPreference$SavedState;->mValue:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    const-string p1, "DropDownPreference"

    const-string v0, "trigger from perform click"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public q()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->f:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->c:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->n(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public w(Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->l()Landroid/widget/ArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->a:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Lmiuix/preference/DropDownPreference;->k()V

    return-void
.end method

.method public x(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/preference/DropDownPreference;->l:Z

    return-void
.end method

.method public y([Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->f:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$f;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntries([Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->f:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->g:[Ljava/lang/CharSequence;

    :goto_0
    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->e:Lmiuix/appcompat/widget/Spinner;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->r()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/preference/DropDownPreference;->o(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    :cond_1
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method

.method public z([I)V
    .locals 2

    iget-object v0, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    instance-of v1, v0, Lmiuix/preference/DropDownPreference$f;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->setEntryIcons([I)V

    iget-object p1, p0, Lmiuix/preference/DropDownPreference;->b:Landroid/widget/ArrayAdapter;

    check-cast p1, Lmiuix/preference/DropDownPreference$f;

    invoke-virtual {p1}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;->getEntryIcons()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/DropDownPreference;->h:[Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p0}, Lmiuix/preference/DropDownPreference;->notifyChanged()V

    return-void
.end method
