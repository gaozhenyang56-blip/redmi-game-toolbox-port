.class public Landroidx/preference/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/f$d;,
        Landroidx/preference/f$b;,
        Landroidx/preference/f$a;,
        Landroidx/preference/f$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:J

.field private c:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/content/SharedPreferences$Editor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Landroidx/preference/PreferenceScreen;

.field private j:Landroidx/preference/f$c;

.field private k:Landroidx/preference/f$a;

.field private l:Landroidx/preference/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/preference/f;->b:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/f;->h:I

    iput-object p1, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/f;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/preference/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/preference/f;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iput-boolean p1, p0, Landroidx/preference/f;->e:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/preference/f;->i:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public b()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    return-object v0
.end method

.method f()Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Landroidx/preference/f;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/f;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/f;->m()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method g()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/preference/f;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/preference/f;->b:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Landroidx/preference/f$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/preference/f;->l:Landroidx/preference/f$b;

    return-object v0
.end method

.method public i()Landroidx/preference/f$c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/preference/f;->j:Landroidx/preference/f$c;

    return-object v0
.end method

.method public j()Landroidx/preference/f$d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Landroidx/preference/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Landroidx/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Landroidx/preference/f;->i:Landroidx/preference/PreferenceScreen;

    return-object v0
.end method

.method public m()Landroid/content/SharedPreferences;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/preference/f;->k()Landroidx/preference/b;

    iget-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/preference/f;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroidx/preference/f;->f:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/f;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public n(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/preference/PreferenceScreen;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->c:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/preference/f;->o(Z)V

    new-instance v0, Landroidx/preference/e;

    invoke-direct {v0, p1, p0}, Landroidx/preference/e;-><init>(Landroid/content/Context;Landroidx/preference/f;)V

    invoke-virtual {v0, p2, p3}, Landroidx/preference/e;->d(ILandroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/f;)V

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroidx/preference/f;->o(Z)V

    return-object p1
.end method

.method public p(Landroidx/preference/f$a;)V
    .locals 0
    .param p1    # Landroidx/preference/f$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/preference/f;->k:Landroidx/preference/f$a;

    return-void
.end method

.method public q(Landroidx/preference/f$b;)V
    .locals 0
    .param p1    # Landroidx/preference/f$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/preference/f;->l:Landroidx/preference/f$b;

    return-void
.end method

.method public r(Landroidx/preference/f$c;)V
    .locals 0
    .param p1    # Landroidx/preference/f$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/preference/f;->j:Landroidx/preference/f$c;

    return-void
.end method

.method public s(Landroidx/preference/PreferenceScreen;)Z
    .locals 1

    iget-object v0, p0, Landroidx/preference/f;->i:Landroidx/preference/PreferenceScreen;

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->onDetached()V

    :cond_0
    iput-object p1, p0, Landroidx/preference/f;->i:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/preference/f;->f:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method u()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/f;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public v(Landroidx/preference/Preference;)V
    .locals 1
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/preference/f;->k:Landroidx/preference/f$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/preference/f$a;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
