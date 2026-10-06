.class Lcom/miui/permcenter/install/PackageManagerActivity$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/install/PackageManagerActivity$c;->J()Lxb/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lxb/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/text/Collator;

.field final synthetic b:Lcom/miui/permcenter/install/PackageManagerActivity$c;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/install/PackageManagerActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$c$a;->b:Lcom/miui/permcenter/install/PackageManagerActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/install/PackageManagerActivity$c$a;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lxb/g;Lxb/g;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity$c$a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Lxb/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lxb/g;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lxb/g;

    check-cast p2, Lxb/g;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/PackageManagerActivity$c$a;->a(Lxb/g;Lxb/g;)I

    move-result p1

    return p1
.end method
