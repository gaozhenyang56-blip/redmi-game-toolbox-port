.class public Lel/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setExtraFlags"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lgm/b;->g(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lel/a;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lel/a;->a:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/Window;I)Z
    .locals 5

    sget-object v0, Lel/a;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    const/4 v2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-ne p1, v2, :cond_2

    const/16 v3, 0x2010

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit16 v3, v3, -0x2001

    and-int/lit8 v3, v3, -0x11

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    const/high16 v0, 0x4000000

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :goto_2
    const/4 v0, 0x2

    const/16 v3, 0x11

    if-nez p1, :cond_4

    :try_start_0
    sget-object p1, Lel/a;->a:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    if-ne p1, v2, :cond_5

    move p1, v3

    goto :goto_3

    :cond_5
    move p1, v2

    :goto_3
    sget-object v4, Lel/a;->a:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move v1, v2

    :catch_0
    return v1
.end method
