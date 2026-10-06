.class public Lcom/miui/permcenter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/permcenter/AppPermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/b;->a:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/permcenter/AppPermissionInfo;Lcom/miui/permcenter/AppPermissionInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/b;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/permcenter/AppPermissionInfo;

    check-cast p2, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/b;->a(Lcom/miui/permcenter/AppPermissionInfo;Lcom/miui/permcenter/AppPermissionInfo;)I

    move-result p1

    return p1
.end method
