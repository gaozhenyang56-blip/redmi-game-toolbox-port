.class public final synthetic Lad/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/phonemanage/PhoneManagerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/phonemanage/PhoneManagerFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/c;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lad/c;->a:Lcom/miui/phonemanage/PhoneManagerFragment;

    invoke-static {v0}, Lcom/miui/phonemanage/PhoneManagerFragment;->i0(Lcom/miui/phonemanage/PhoneManagerFragment;)V

    return-void
.end method
