.class public Lc7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lc7/a;

.field private static b:Landroid/app/Application;

.field private static c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/a;

    invoke-direct {v0}, Lc7/a;-><init>()V

    sput-object v0, Lc7/a;->a:Lc7/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc7/a;
    .locals 1

    sget-object v0, Lc7/a;->a:Lc7/a;

    return-object v0
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lc7/a;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static c(Landroid/app/Application;Landroid/content/SharedPreferences;)V
    .locals 0

    sput-object p0, Lc7/a;->b:Landroid/app/Application;

    sput-object p1, Lc7/a;->c:Landroid/content/SharedPreferences;

    return-void
.end method
