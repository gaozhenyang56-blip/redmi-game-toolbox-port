.class final Lcom/miui/autotask/common/a$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/common/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/autotask/common/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/autotask/common/a$d;

    invoke-direct {v0}, Lcom/miui/autotask/common/a$d;-><init>()V

    sput-object v0, Lcom/miui/autotask/common/a$d;->a:Lcom/miui/autotask/common/a$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "autoTaskSp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/common/a$d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
