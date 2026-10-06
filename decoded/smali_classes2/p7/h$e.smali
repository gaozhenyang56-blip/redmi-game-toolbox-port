.class Lp7/h$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field static final a:Lp7/h;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp7/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp7/h;-><init>(Lp7/h$a;)V

    sput-object v0, Lp7/h$e;->a:Lp7/h;

    return-void
.end method
