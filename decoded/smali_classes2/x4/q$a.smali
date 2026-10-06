.class public final Lx4/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lx4/q$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lx4/q$a;Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lx4/q$a;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lx4/q$a;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lx4/q$a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final c(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "android.app.Activity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mReferrer"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "forName(\"android.app.Act\u2026eclaredField(\"mReferrer\")"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "maml"

    invoke-static {p1, v3, v0, v1, v2}, Ljk/f;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "widget"

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "notification"

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lx4/q;->b()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120258

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "res.getString(\n         \u2026ion\n                    )"

    :goto_0
    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_1
    invoke-static {}, Lx4/q;->b()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12025b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "res.getString(\n         \u2026get\n                    )"

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "com.miui.home"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lx4/q;->b()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120257

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "res.getString(R.string.app_source_home)"

    goto :goto_3

    :sswitch_1
    const-string v0, "com.android.settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lx4/q;->b()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12025a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "res.getString(R.string.app_source_settings)"

    goto :goto_3

    :sswitch_2
    const-string v0, "com.miui.securitycenter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lx4/q;->b()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120c2e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "res.getString(R.string.homepage_entry_way)"

    goto :goto_3

    :sswitch_3
    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lx4/q;->b()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120256

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "res.getString(R.string.app_source_global_search)"

    goto :goto_3

    :goto_2
    if-nez p1, :cond_7

    invoke-static {}, Lx4/q;->b()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120259

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "res.getString(R.string.app_source_other)"

    :goto_3
    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x59d937be -> :sswitch_3
        -0x547d03da -> :sswitch_2
        0x44f4b98f -> :sswitch_1
        0x7ce26eb0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final declared-synchronized d()Lx4/q;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lx4/q;->a()Lx4/q;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lx4/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx4/q;-><init>(Lbk/g;)V

    invoke-static {v0}, Lx4/q;->c(Lx4/q;)V

    :cond_0
    invoke-static {}, Lx4/q;->a()Lx4/q;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1}, Lx4/q$a;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    const-string v1, "enter_homepage_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lx4/q$a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
