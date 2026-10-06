.class public Loc/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Loc/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Loc/a;

.field private final c:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Loc/a;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loc/e$a;->a:Ljava/lang/String;

    iput-object p2, p0, Loc/e$a;->b:Loc/a;

    iput-object p3, p0, Loc/e$a;->c:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method static synthetic a(Loc/e$a;)Loc/a;
    .locals 0

    iget-object p0, p0, Loc/e$a;->b:Loc/a;

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Loc/e$a;->b:Loc/a;

    invoke-virtual {v0}, Loc/a;->b()Z

    move-result v0

    return v0
.end method

.method public c(Loc/e$a;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Loc/e$a;

    invoke-virtual {p0, p1}, Loc/e$a;->c(Loc/e$a;)I

    move-result p1

    return p1
.end method

.method public d()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Loc/e$a;->c:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Loc/e$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loc/e$a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loc/e$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Loc/a;
    .locals 1

    iget-object v0, p0, Loc/e$a;->b:Loc/a;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Loc/e$a;->b:Loc/a;

    invoke-virtual {v0}, Loc/a;->f()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Loc/e$a;->b:Loc/a;

    invoke-virtual {v0}, Loc/a;->m()Z

    move-result v0

    return v0
.end method
