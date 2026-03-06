public abstract class EntidadeBase {
    // ================================================================
    // ATRIBUTOS ESTRUTURAIS
    // ================================================================

    private String id {get; private set;}

    public EntidadeBase(String id) {
        this.id = UUID.randomUUID().toString();
    }

    // ================================================================
    // OVERRIDES BÁSICOS
    // ================================================================

    public Boolean equals(Object obj) {
        if (obj == null || !(obj instanceof EntidadeBase)) return false;
        if (this === obj) return true;

        EntidadeBase outro = (EntidadeBase) obj;

        return this.id == outro.id;
    }

    public Integer hashCode() {
        return this.id.hashCode();
    }
}